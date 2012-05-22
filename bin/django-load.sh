#!/bin/sh

LUTEFISKDEMO_HOME="$(dirname $0)"/..
export LUTEFISKDEMO_HOME

. "${LUTEFISKDEMO_HOME}"/etc/common

FILENAME="$1"

if [ "${FILENAME}" = "" ]; then
    FILENAME="${LUTEFISKDEMO_DATA}"/django-load.json
fi

"${LUTEFISKDEMO_BIN}"/django-manage.sh loaddata "${FILENAME}"

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
