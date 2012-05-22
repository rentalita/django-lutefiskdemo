#!/bin/sh

LUTEFISKDEMO_TESTS=
export LUTEFISKDEMO_TESTS

LUTEFISKDEMO_HOME="$(dirname $0)"
. "${LUTEFISKDEMO_HOME}"/etc/common

cd "${LUTEFISKDEMO_HOME}"

"${LUTEFISKDEMO_BIN}"/python.sh setup.py -q clean "$@"
[ $? != 0 ] && echo "ERROR!!!" && exit 1

find . -name "*~" | xargs rm -f
find . -name "*.pyc" | xargs rm -f

exit 0

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
