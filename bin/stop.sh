#!/bin/sh -e

LUTEFISKDEMO_HOME="$(dirname $0)"/..
export LUTEFISKDEMO_HOME

. "${LUTEFISKDEMO_HOME}"/etc/common

"${LUTEFISKDEMO_BIN}"/lighttpd.sh stop
"${LUTEFISKDEMO_BIN}"/celeryd.sh stop

exit 0

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
