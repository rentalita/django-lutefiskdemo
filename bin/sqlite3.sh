#!/bin/sh

LUTEFISKDEMO_HOME="$(dirname $0)"/..
export LUTEFISKDEMO_HOME

. "${LUTEFISKDEMO_HOME}"/etc/common

sqlite3 ${LUTEFISKDEMO_SQLITE3FLAGS} "$@"

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
