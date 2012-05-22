#!/bin/sh

LUTEFISKDEMO_HOME="$(dirname $0)"/..
export LUTEFISKDEMO_HOME

. "${LUTEFISKDEMO_HOME}"/etc/common

LOCALES="es"

for locale in ${LOCALES}; do
    (
        cd "${LUTEFISKDEMO_HOME}"
        "${LUTEFISKDEMO_BIN}"/django-manage.sh makemessages -l "${locale}" -e .html -e .txt -e .js
        "${LUTEFISKDEMO_BIN}"/django-manage.sh compilemessages -l "${locale}"
    )
done

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
