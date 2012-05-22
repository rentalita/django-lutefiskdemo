#!/bin/sh -e

LUTEFISKDEMO_HOME="$(dirname $0)"/..
export LUTEFISKDEMO_HOME

. "${LUTEFISKDEMO_HOME}"/etc/common

TARGET="$@"
TARGET="${TARGET:-help}"

"${LUTEFISKDEMO_BIN}"/python.sh "${LUTEFISKDEMO_BIN}"/django-manage.py ${TARGET} --settings="${DJANGO_SETTINGS_MODULE}" -v 0

exit 0

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
