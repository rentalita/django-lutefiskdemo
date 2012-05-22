# -*- coding: utf-8 -*-

from django.conf.urls.defaults import patterns, include, url

import lutefiskdemo.default.urls

urlpatterns = patterns('',
    url(r'^default/', include(lutefiskdemo.default.urls)),
)

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
