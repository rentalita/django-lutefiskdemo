#!/bin/sh

LUTEFISKDEMO_TESTS=1
export LUTEFISKDEMO_TESTS

LUTEFISKDEMO_HOME="$(dirname $0)"
. "${LUTEFISKDEMO_HOME}"/etc/common

cd "${LUTEFISKDEMO_HOME}"

"${LUTEFISKDEMO_BIN}"/django-migrate.sh

"${LUTEFISKDEMO_BIN}"/nosetests.sh "$@"
[ $? != 0 ] && echo "ERROR!!!" && exit 1

exit 0

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
