# Chef for Junos

This project creates a full-stack Chef bundle for the Junos operation 
system which runs on Juniper switches. Just like the Chef Omnibus 
packages for other platforms, this final bundle contains all of Chef's 
dependencies including Ruby!

## Installation

First you need to generate build sandbox with the Junos SDK:

```shell
mksb -name chef -base /usr/tmp/
```

Code in this sandbox is compiled and linked with the libraries in the 
Junos SDK backing sandbox to produce a Chef bundle that can be loaded on 
a supported Junos router. 

Next clone this repository into your build sandbox as the `src` 
directory:

```shell
git clone git@github.com:opscode/junos-chef.git /usr/tmp/chef/src
```

## Usage

### Build

The `build` task:

* Pulls down a specific version of Chef from Rubygems.org (along with 
all gem dependencies).
* Dynamically generates a release manifest Chef.
* Compiles all libraries and binaries (i.e. Ruby and friends).
* Generates a signed Chef Junos bundle which contains a package for Ruby 
and Chef.

```shell
cd /usr/tmp/chef/src
rake build
```

### Clean/Clobber

You can clean up all temporary files generated during the build process with
the `clean` task:

```shell
cd /usr/tmp/chef/src
rake clean
```

If you want to remove __ALL__ files generated during the build (including 
output packges) use the `clobber` task:

```shell
cd /usr/tmp/chef/src
rake clobber
```

## Junos SDK Build VM Setup

General information about the Junos SDK along instructions for setting 
up the Virtual Build Environment (VBE) can be found at in the 
[Juniper Developer Portal ]
(http://www.juniper.net/techpubs/en_US/junos-sdk/12.2/junos-sdk-doc/ig_toc_page.html)
(requires registration).

To build a Chef package for Junos you will need:

* Virtual Build Environment (VBE) - a specially tailored virtual machine 
meant to be run with VMware Player (Windows, Linux) or VMware Fusion 
(Mac OS X).
* SDK backing sandbox package
* SDK Tool-chain package

Code in this repository has been tested with the following versions of the above tools:

* SDK VBE 13.1R1.6
* SDK Backing Sandbox 13.2X50-D10.2
* SDK Tool-chain 13.2B2

### Prereqs

The VBE is based on FreeBSD 7. First let's install some useful 
development tools inside the VBE:

```shell
# Install wget
cd /usr/ports/ftp/wget
make install clean; rehash

# Install bash
cd /usr/ports/shells/bash
make install clean; rehash

# Install curl
cd /usr/ports/ftp/curl
make install clean; rehash

# Install libxml2
wget -O /usr/ports/distfiles/gnome2/libxml2-2.6.32.tar.gz http://xmlsoft.org/sources/old/libxml2-2.6.32.tar.gz
cd /usr/ports/textproc/libxml2
make install clean; rehash

# Install libxslt
cd /usr/ports/textproc/libxslt
make install clean; rehash

# Update CA
wget -O /etc/ssl/cert.pem http://curl.haxx.se/ca/cacert.pem
cp /usr/local/share/curl/curl-ca-bundle.crt /usr/local/share/curl/curl-ca-bundle.crt.old
cat /etc/ssl/cert.pem /usr/local/share/curl/curl-ca-bundle.crt >> /usr/local/share/curl/curl-ca-bundle-new.crt
mv /usr/local/share/curl/curl-ca-bundle-new.crt /usr/local/share/curl/curl-ca-bundle.crt

# Install python (required for git compile)
cd /usr/ports/lang/python
make install clean; rehash

# Install modern git
cd /tmp
wget https://git-core.googlecode.com/files/git-1.8.3.3.tar.gz
tar xzvf git-1.8.3.3.tar.gz
cd git-1.8.3.3
./configure --prefix=/usr/local --enable-pthreads=-pthread --with-openssl=/usr/local --with-curl=/usr/local
gmake install clean; rehash
```

### Ruby 1.9.3 (via rbenv)

```shell
git clone https://github.com/sstephenson/rbenv.git /usr/local/rbenv

cd /tmp
git clone https://github.com/sstephenson/ruby-build.git
cd ruby-build
./install.sh

# ensure all new users have a sane .profile
cat <<'EOL' >> /usr/share/skel/dot.profile

#### begin rbenv configuration ####
## Remove these lines if you wish to use your own
## clone of rbenv (with your own rubies)

export RBENV_ROOT=/usr/local/rbenv
export PATH="$RBENV_ROOT/bin:$PATH"
eval "$(rbenv init -)"

# Allow local Gem management
export GEM_HOME="$HOME/.gem"
export GEM_PATH="$HOME/.gem"
export PATH="$HOME/.gem/bin:$PATH"
#### end rbenv configuration ####
'EOL'

# ensure all new users have a sane .gemrc
echo "gem: --no-ri --no-rdoc" >> /usr/share/skel/dot.gemrc

# Install Ruby 1.9.3
bash
export RBENV_ROOT=/usr/local/rbenv
export PATH="$RBENV_ROOT/bin:$PATH"
eval "$(rbenv init -)"
export MAKE=/usr/local/bin/gmake
export CONFIGURE_OPTS="--with-opt-dir=/usr/local/rbenv/versions/1.9.3-p448"
rbenv install 1.9.3-p448
rbenv global 1.9.3-p448
```

### Create a user and configure PROFILE

```shell
# be sure to choose bash as default shell
adduser 
```

### Install Juniper SDK Backing Sandbox and Toolchain

```shell
pkg_add junos-sdk-sb-13.2X50-D10.2-signed.tgz
pkg_add junos-sdk-toolchain-13.2B2-signed.tgz

echo 'export PATH="$PATH:/usr/local/junos-sdk/13.2X50-D10.2/bin"' >> ~/.profile
```

### Move your package signing key and certificate into place

Place your generated package signing key and the certificate assigned to 
your organization by Juniper in `/usr/local/junos-sdk/certs`. More information about the 
package signing key/certificate generation process can be found 
[here](http://www.juniper.net/techpubs/en_US/junos-sdk/12.2/junos-sdk-doc/pkg_cert_page.html).

## License

See the LICENSE file for details.

Copyright (c) 2013 Opscode, Inc.
License: Apache License, Version 2.0

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
