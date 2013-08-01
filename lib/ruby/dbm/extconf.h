#ifndef EXTCONF_H
#define EXTCONF_H
#define HAVE_TYPE_DBM 1
#define HAVE_DBM_OPEN 1
#define HAVE_DBM_CLEARERR 1
#define DBM_HDR <ndbm.h>
#define HAVE_SYS_CDEFS_H 1
#define HAVE_DBM_DIRFNO 1
#define SIZEOF_DATUM_DSIZE SIZEOF_INT
#define TYPEOF_DATUM_DSIZE int
#define PRI_DATUM_DSIZE_PREFIX PRI_INT_PREFIX
#define DATUM_DSIZE2NUM INT2NUM
#define NUM2DATUM_DSIZE NUM2INT
#endif
