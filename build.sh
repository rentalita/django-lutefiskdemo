#!/bin/sh

LUTEFISKDEMO_TESTS=
export LUTEFISKDEMO_TESTS

LUTEFISKDEMO_HOME="$(dirname $0)"
. "${LUTEFISKDEMO_HOME}"/etc/common

cd "${LUTEFISKDEMO_HOME}"

TARGET="$@"
TARGET="${TARGET:-develop}"

"${LUTEFISKDEMO_BIN}"/python.sh setup.py -q ${TARGET}
[ $? != 0 ] && echo "ERROR!!!" && exit 1

"${LUTEFISKDEMO_BIN}"/django-migrate.sh
"${LUTEFISKDEMO_BIN}"/django-load.sh

exit 0

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
