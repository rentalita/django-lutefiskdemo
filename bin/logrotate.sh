#!/bin/sh -e

LUTEFISKDEMO_HOME="$(dirname $0)"/..
export LUTEFISKDEMO_HOME

. "${LUTEFISKDEMO_HOME}"/etc/common

${ASROOT} logrotate --state "${LUTEFISKDEMO_RUN}"/logrotate.state \
    "${LUTEFISKDEMO_ETC}"/logrotate.conf "$@"

exit 0

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
