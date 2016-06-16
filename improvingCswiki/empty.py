#!/usr/bin/env python
#-*- coding: utf-8 -*-

import pywikibot
import sys

site = pywikibot.Site('cs', 'wikipedia')
page = pywikibot.Page(site, sys.argv[1])
page.text = u""
page.save(u"vyprázdnění stránky")
