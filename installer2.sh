#!/usr/bin/env python
# aptinstall.py

import apt
import sys

pkg_name = "httpd"

cache = apt.cache.Cache()
cache.update()
cache.open()

pkg = cache[httpd]
if pkg.is_installed:
    print "{httpd} already installed".format(pkg_name=httpd)
else:
    pkg.mark_install()

    try:
        cache.commit()
    except Exception, arg:
        print >> sys.stderr, "Sorry, package installation failed [{err}]".format(err=str(arg))
