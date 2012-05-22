#!/bin/sh

LUTEFISKDEMO_HOME="$(dirname $0)"/..
export LUTEFISKDEMO_HOME

. "${LUTEFISKDEMO_HOME}"/etc/common

"${LUTEFISKDEMO_BIN}"/django-manage.sh schemamigration lutefiskdemo --auto

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
