Pinboard List Export
====================

Exports a list of links, filtered by at least one tag, from a pinboard account. Currently supports HTML, Markdown, textile, and mediawiki-markup as output formats. 

Homepage: http://github.com/hng/pinboard-list-export

Usage
-----

	Usage: pinboard-list-export.rb [options]
    	-t, --tags TAGS                  pinboard tags to export into list (separated by comma)
    	-u, --user USER                  pinboard username
    	-p, --password PASSWORD          pinboard password
    	-f, --format FORMAT              output format: html (default), markdown, textile, wiki, text
    	-h, --help                       Displays this screen

Dependencies
------------

pinboard gem (>= 0.0.3):

	gem install pinboard

License
-------

Copyright (C) 2011 Henning Schumann

MIT-License:

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
