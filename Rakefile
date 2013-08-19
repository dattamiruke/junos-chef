#
# Copyright:: Copyright (c) 2013 Opscode, Inc.
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'rake/clean'

CLEAN.include('lib/gems/*/')
CLEAN.include('../*-obj/ship/*.tgz')
CLEAN.include('release/chef.manifest')
CLEAN.include('release/junos-ez-stdlib.manifest')
CLOBBER.include('../tmp/*')
CLOBBER.include('../*-obj')

GEMS_TO_PACKAGE = [
  {
    :name => "chef",
    :source => "https://github.com/opscode/chef.git",
    :version => ENV["CHEF_GIT_REV"] || "11.6.0"
  },
  {
    :name => "junos-ez-stdlib",
    :source => "https://github.com/Juniper/ruby-junos-ez-stdlib.git",
    :version => ENV['JUNOS_EZ_STDLIB_GIT_REV'] || "v0.2.0_20130819_1"
  }
]

desc "package all the things"
task :package do

  opts = {
    :sdk_project_root => File.expand_path("..", __FILE__),
    :tmpdir => File.expand_path("../../tmp", __FILE__)
  }

  GEMS_TO_PACKAGE.each do |g|

    p = PackageGem.new(
      g[:name],
      g[:source],
      g[:version],
      opts
    )

    p.fetch_source
    p.build_gem
    p.install_gem_with_dependencies
    p.generate_native_extension_build_tree
    p.generate_package_manifest

  end

  # Compile all the things
  system("mk etc") || raise
  system("mk-powerpc lib") || raise
  system("mk-powerpc sbin") || raise

  # Package all the things
  Dir.chdir "release" do
    system("mk-powerpc chef-bundle") || raise
  end
end

########################################################################
# Helper Classes
########################################################################

require 'erb'
require 'mixlib/versioning'
require 'ostruct'
require 'pathname'
require 'rubygems/dependency'
require 'rubygems/dependency_installer'
require 'rubygems/builder'
require 'rubygems/specification'
require 'tempfile'

class PackageGem

  attr_reader :name
  attr_reader :source
  attr_reader :version
  attr_reader :project_root

  def initialize(name, source, version, opts={})
    @name = name
    @source = source
    @version = version
    @sdk_project_root = opts[:sdk_project_root]
    @tmpdir = opts[:tmpdir] || Dir.tmpdir
  end

  def src_dir
    File.join(@tmpdir, @name, "src")
  end

  alias_method :project_dir, :src_dir

  def gem_file_path
    Dir.glob(File.join(src_dir, "*.gem")).last
  end

  def gem_repo_dir
    File.join(@tmpdir, @name, "gem_home")
  end

  def ext_build_dir
    File.join(@sdk_project_root, "lib", "gems", @name)
  end

  def installed_specs
    Dir.glob(File.join(gem_repo_dir, "specifications", "*.gemspec")).map do |spec_file|
      Gem::Specification.load(spec_file)
    end
  end

  def specs_with_native_extension
    installed_specs.find_all{|spec| spec.extensions.any? }
  end

  def specs_with_executables
    installed_specs.find_all{|spec| spec.executables.any? }
  end

  def spec_install_path(spec)
    File.join(gem_repo_dir, "gems", "#{spec.name}-#{spec.version}")
  end

  def env_var_friendly_name
    name.gsub("-", "_").upcase
  end

  ################################################
  # Git clone gem source
  ################################################
  def fetch_source
    banner "#{name}: Fetching source to '#{src_dir}'"
    GitFetcher.new(self).fetch
  end

  ################################################
  # Create a *.gem file from source
  ################################################
  def build_gem
    banner "#{name}: Building gem from source"
    Dir.chdir(src_dir) do
      # clean up previous gems
      FileUtils.rm_r(Dir.glob("*.gem"))
      spec = Gem::Specification.load("#{@name}.gemspec")
      Gem::Builder.new(spec).build

      # Export SemVer compliant version string
      env_var_name = "#{env_var_friendly_name}_VERSION"
      banner "#{name}: Exporting SemVer compliant version string under '#{env_var_name}' environment variable."
      git_describe_output = %x{ git describe }
      if v = Mixlib::Versioning.parse(git_describe_output)
        ENV[env_var_name] = v.to_semver_string
      else
        banner "#{name}: Could not parse SemVer compliant version string from git describe output '#{git_describe_output.chomp}'"
      end
    end
  end

  ################################################
  # Install Gem (and it's dependencies) using
  # the Rubygems Ruby API
  ################################################
  def install_gem_with_dependencies
    banner "#{name}: Installing gems to '#{gem_repo_dir}'"

    # Determine if we are installing from a local *.gem file OR remotely
    # from the Rubygems.org API
    dep = gem_file_path ? gem_file_path : Gem::Dependency.new(name, nil)

    # HAX - Force Nokogiri to compile against system libxml2/libxslt
    ENV['NOKOGIRI_USE_SYSTEM_LIBRARIES'] = "true"

    installer_opts = {
      :env_shebang => true,
      :install_dir => gem_repo_dir
    }
    installer = Gem::DependencyInstaller.new(installer_opts)

    installer.install(dep)
  end

  def generate_native_extension_build_tree

    banner "#{name}: Generating native extension build tree"

    specs_with_native_extension.each do |spec|

      spec_build_root = "#{ext_build_dir}/#{spec.name}"

      spec.extensions.each do |e|

        # e = "ext/json/ext/generator/extconf.rb"

        # gems/chef/gems/json-1.7.7/ext/json/ext/generator
        extension_source_path = "#{spec_install_path(spec)}/#{e.match(/(.*)\/extconf.rb/)[1]}"
        # generator
        extension_name = extension_source_path.split(/\//).last
        # SDK_PROJECT_ROOT/lib/gems/chef/gems/json/generator
        extension_build_root = "#{spec_build_root}/#{extension_name}"

        # Cleanup *.so generated by the `gem install`
        FileUtils.rm Dir.glob("#{extension_source_path}/*.so")

        makefile_content = render_erb(File.read("templates/extension_makefile.erb"), {
          :name => extension_name,
          :source_path => extension_source_path,
          :sources => FileList.new("#{extension_source_path}/*.c").map{|f| File.basename(f) }
        })

        makefile_path = File.join(extension_build_root, "Makefile")
        banner("#{spec.name}: Generating SDK Makefile for native extension at #{makefile_path}", 2)

        # write out a Makefile for the extension
        ext_makefile_path = Pathname.new(makefile_path)
        ext_makefile_path.dirname.mkpath
        ext_makefile_path.open("w") do |makefile|
          makefile.puts(makefile_content)
        end
      end

      # Write out a Makefile for the dep
      #
      # SDK_PROJECT_ROOT/lib/gems/chef/json/generator/Makefile
      create_subdirectory_makefile("#{spec_build_root}/Makefile")
    end

    # Write out a Makefile for the gem
    #
    # SDK_PROJECT_ROOT/lib/gems/chef/json/Makefile
    create_subdirectory_makefile("#{ext_build_dir}/Makefile")
  end

  ################################################
  # Generate a Junos SDK package manifest
  ################################################
  def generate_package_manifest
    # program_id is a number ranging from 0 to 63 and increasing with each
    # binary added to the manifest. The number must be unique among all
    # programs with a given package ID
    program_id_index = 0

    manifest_lines = []
    # first line contains the package_id
    manifest_lines << "/set package_id=#{package_id_index}"

    ##############################################
    # Process Standard Gem Files
    ##############################################

    file_list = FileList.new("#{gem_repo_dir}/**/*") do |fl|
      # exclude directories
      fl.exclude{|f| File.directory?(f) }
      # exclude native extensions (we'll recompile them with the SDK)
      fl.exclude(/\.so/)
      # exclude executables (we'll process these separately)
      fl.exclude("**/**/bin/*")
    end

    file_list.each do |file|
      # given `dist/gems/chef/specifications/json-1.7.7.gemspec`
      # this should return `specifications/json-1.7.7.gemspec`
      path_minus_base = file.match(/#{gem_repo_dir}\/(.*)/)[1]
      manifest_lines << "#{file} store=%INSTALLDIR%/lib/ruby/gems/1.9.1/#{path_minus_base} mode=444"
    end

    ##############################################
    # Process Native Extensions
    ##############################################

    banner "#{name}: Processing native extensions"
    manifest_lines << "\n######## NATIVE EXTENSIONS ########\n"

    specs_with_native_extension.each do |spec|

      banner("Manifesting native extension '#{spec.name}'", 2)

      # SDK_PROJECT_ROOT/lib/gems/chef/gems/json
      spec_build_root = "#{ext_build_dir}/#{spec.name}"

      spec.extensions.each do |e|

        # e = "ext/json/ext/generator/extconf.rb"

        # `json/ext/generator`
        relative_install_path = e.match(/ext\/(.*)\/extconf.rb/)[1]
        # turns `yajl` into `yajl/yajl`
        relative_install_path = "#{relative_install_path}/#{relative_install_path}" unless relative_install_path =~ /\//
        # `generator`
        extension_name = relative_install_path.split(/\//).last

        # SDK_PROJECT_ROOT/lib/gems/chef/gems/json/generator
        extension_build_root = "#{spec_build_root}/#{extension_name}"

        # lib/gems/chef/gems/json
        relative_build_root = extension_build_root.match(/#{@sdk_project_root}\/(.*)/)[1]

        # add manifest line for the native extension
        manifest_lines << "%TOPDIR%/#{relative_build_root}/#{extension_name}.so store=%INSTALLDIR%/lib/ruby/gems/1.9.1/gems/#{spec.name}-#{spec.version}/lib/#{relative_install_path}.so mode=444"
      end

    end

    ##############################################
    # Process Gem Executables
    ##############################################

    banner "Processing executables for #{name}"
    manifest_lines << "\n######## EXECUTABLES #######\n"
    specs_with_executables.each do |spec|
      spec.executables.each do |executable|

        banner("Manifesting gem executable '#{executable}'", 2)

        # Add a line for the gem-level bindir
        executable_path = "gems/#{spec.name}-#{spec.version}/#{spec.bindir}/#{executable}"
        manifest_line = "#{gem_repo_dir}/#{executable_path} store=%INSTALLDIR%/lib/ruby/gems/1.9.1/#{executable_path} mode=555 program_id=#{program_id_index += 1}"
        manifest_lines << manifest_line

        # Add a line for the top-level Rubygems bindir, we'll install
        # this one at the main sbin directory for the package
        executable_path = "bin/#{executable}"
        manifest_line = "#{gem_repo_dir}/#{executable_path} store=%INSTALLDIR%/bin/#{executable} mode=555 program_id=#{program_id_index += 1}"
        manifest_lines << manifest_line
      end

    end

    # write out the actual package manifest file
    manifest_path = File.expand_path("release/#{name}.manifest")

    banner "#{name}: Writing package manifest file at #{manifest_path}"

    File.open(manifest_path, "w") do |manifest|
      manifest.puts(manifest_lines.join("\n"))
    end
  end

  private

  def banner(msg, indention_level=nil)
    indent = indention_level ? (indention_level * 5) : 5
    puts "\n#{"-" * indent}> #{msg}\n\n"
  end

  # package_id identifies the package uniquely. You can use any value
  # from 1 to 31 for package-id. 0 should be considered reserved. The
  # value should be unique among all your manifests. There should never
  # be more than one package from the same provider with the same
  # package ID. (This does not apply to packages with the same name, but
  # different versions. These must use the same package ID in order to
  # support future upgrades.)
  #
  def package_id_index
    if defined? @@package_id_index
      @@package_id_index += 1
    else
      # we'll start at 2 since the Ruby package's id is 1
      @@package_id_index = 2
      @@package_id_index
    end
  end

  def render_erb(template, locals)
    ERB.new(template).result(OpenStruct.new(locals).instance_eval { binding })
  end

  def create_subdirectory_makefile(path)
    banner("Writing subdirectory Makefile at '#{path}'")
    gem_makefile_path = Pathname.new(path)
    makefile_content = render_erb(File.read("templates/subdir_makefile.erb"), {
      :subdirectories => gem_makefile_path.parent.children(false)
    })
    gem_makefile_path.open("w") do |makefile|
      makefile.puts(makefile_content)
    end
  end

end

# This class is based heavily on `Omnibus::Fetchers::Git` from the
# Omnibus project. Why didn't we just use that class here? Well it
# executes all commands with `Mixlib::Shellout` which throws the
# following exception on the Junos VBE:
#
#   NotImplementedError: fork() function is unimplemented on this machine
#
# The Junos SDK VBE is based on FreeBSD 7.1 which does not play nicely
# with Ruby's fork: http://bugs.ruby-lang.org/issues/2097

class GitFetcher

  attr_reader :name
  attr_reader :source
  attr_reader :project_dir
  attr_reader :version

  def initialize(software)
    @name         = software.name
    @source       = software.source
    @version      = software.version
    @project_dir  = software.project_dir
  end

  def clean
    if existing_git_clone?
      puts "cleaning existing build"
      system "git clean -fdx"
    end
  rescue Exception => e
    raise e, "Failed to clean git repository '#{@source}'"
  end

  def fetch_required?
    !existing_git_clone? || !current_rev_matches_target_rev?
  end

  def fetch
    retries ||= 0
    if existing_git_clone?
      fetch_updates unless current_rev_matches_target_rev?
    else
      clone
      checkout
    end
  rescue Exception => e
    if retries >= 3
      raise e, "Failed to fetch git repository '#{@source}'"
    else
      # Deal with github failing all the time :(
      time_to_sleep = 5 * (2 ** retries)
      retries += 1
      puts "git clone/fetch failed for #{@source} #{retries} time(s), retrying in #{time_to_sleep}s"
      sleep(time_to_sleep)
      retry
    end
  end

  private

  def clone
    puts "cloning the source from git"
    system "git clone #{@source} #{project_dir}"
  end

  def checkout
    Dir.chdir(project_dir) do
      system "git checkout #{target_revision}"
    end
  end

  def fetch_updates
    puts "fetching updates and resetting to revision #{target_revision}"
    Dir.chdir(project_dir) do
      system "git fetch origin"
      system "git fetch origin --tags"
      system "git reset --hard #{target_revision}"
    end
  end

  def existing_git_clone?
    File.exist?("#{project_dir}/.git")
  end

  def current_rev_matches_target_rev?
    current_revision && current_revision.strip.to_i(16) == target_revision.strip.to_i(16)
  end

  def current_revision
    @current_rev ||= begin
                       output = Dir.chdir(project_dir) do
                                  %x{ git rev-parse HEAD }
                                end
                       sha_hash?(output) ? output : nil
                     end
  end

  def target_revision
    @target_rev ||= begin
                      if sha_hash?(version)
                        version
                      else
                        revision_from_remote_reference(version)
                      end
                    end
  end

  def sha_hash?(rev)
    rev =~ /^[0-9a-f]{40}$/
  end

  # Return the SHA corresponding to ref. If ref is an annotated tag,
  # return the SHA that was tagged not the SHA of the tag itself.
  def revision_from_remote_reference(ref)
    retries ||= 0
    # execute `git ls-remote` the trailing '*' does globbing. This
    # allows us to return the SHA of the tagged commit for annotated
    # tags. We take care to only return exact matches in
    # process_remote_list.
    output = Dir.chdir(project_dir) do
               %x{ git ls-remote origin #{ref}* }
             end
    commit_ref = process_remote_list(output, ref)
    if !commit_ref
      raise "Could not parse SHA reference"
    end
    commit_ref
  rescue Exception => e
    if retries >= 3
      raise e, "Failed to fetch git repository '#{@source}'"
    else
      # Deal with github failing all the time :(
      time_to_sleep = 5 * (2 ** retries)
      retries += 1
      puts "git ls-remote failed for #{@source} #{retries} time(s), retrying in #{time_to_sleep}s"
      sleep(time_to_sleep)
      retry
    end
  end

  def process_remote_list(stdout, ref)
    # Dereference annotated tags.
    #
    # Output will look like this:
    #
    # a2ed66c01f42514bcab77fd628149eccb4ecee28        refs/tags/rel-0.11.0
    # f915286abdbc1907878376cce9222ac0b08b12b8        refs/tags/rel-0.11.0^{}
    #
    # The SHA with ^{} is the commit pointed to by an annotated
    # tag. If ref isn't an annotated tag, there will not be a line
    # with trailing ^{}.
    #
    # We'll return the SHA corresponding to the ^{} which is the
    # commit pointed to by an annotated tag. If no such commit
    # exists (not an annotated tag) then we return the SHA of the
    # ref.  If nothing matches, return "".
    lines = stdout.split("\n")
    matches = lines.map { |line| line.split("\t") }
    # first try for ^{} indicating the commit pointed to by an
    # annotated tag
    tagged_commit = matches.find { |m| m[1].end_with?("#{ref}^{}") }
    if tagged_commit
      tagged_commit[0]
    else
      found = matches.find { |m| m[1].end_with?("#{ref}") }
      if found
        found[0]
      else
        nil
      end
    end
  end
end
