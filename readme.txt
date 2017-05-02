Wed Apr 26 13:54:57 CDT 2017
----------------------------
Create notes on git & gitflow for US.  Use AsciiDoc format so we can 
generate HTML5, PDF & mobi

Was able to install guard to watch for changed *.adoc files, and automatically
recreate html.  Need a way for browser to notice changed file and refresh.

Tue May  2 13:07:45 CDT 2017
----------------------------
USAGE
$ guard  # watchs for changes in *.adoc and process w/ asciidoc
$ ./watch.rb . git-notes    # when git-notes.html changes, signal safari

Note also websequencediagrams.com does a nice job of accepting text input 
for MSCs and rendering a graph for the book.

Basic recipe for generating a PDF:
bundle exec asciidoctor-pdf git-notes.adoc
