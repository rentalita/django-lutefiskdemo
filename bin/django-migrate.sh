#!/bin/sh -e

LUTEFISKDEMO_HOME="$(dirname $0)"/..
export LUTEFISKDEMO_HOME

. "${LUTEFISKDEMO_HOME}"/etc/common

"${LUTEFISKDEMO_BIN}"/django-manage.sh syncdb --noinput
"${LUTEFISKDEMO_BIN}"/django-manage.sh migrate

exit 0

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
