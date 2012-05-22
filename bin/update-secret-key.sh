#!/bin/sh

LUTEFISKDEMO_HOME="$(dirname $0)"/..
export LUTEFISKDEMO_HOME

. "${LUTEFISKDEMO_HOME}"/etc/common

"${LUTEFISKDEMO_BIN}"/python.sh "${LUTEFISKDEMO_BIN}"/update-secret-key.py "${LUTEFISKDEMO_SRC}"/python/lutefiskdemo/settings.py

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
