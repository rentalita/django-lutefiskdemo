#!/bin/sh

LUTEFISKDEMO_HOME="$(dirname $0)"/..
export LUTEFISKDEMO_HOME

. "${LUTEFISKDEMO_HOME}"/etc/common

/usr/sbin/make-ssl-cert /usr/share/ssl-cert/ssleay.cnf \
    "${LUTEFISKDEMO_ETC}"/server.pem --force-overwrite

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
