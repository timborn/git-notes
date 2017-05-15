Wed Apr 26 13:54:57 CDT 2017
----------------------------
Create notes on git & gitflow for US.  Use AsciiDoc format so we can 
generate HTML5, PDF & mobi

Was able to install guard to watch for changed *.adoc files, and automatically
recreate html.  Need a way for browser to notice changed file and refresh.

Tue May  2 13:07:45 CDT 2017
----------------------------
USAGE
##$ guard  # watchs for changes in *.adoc and process w/ asciidoc
$ bundle exec guard  # watchs for changes in *.adoc and process w/ asciidoc
$ ./watch.rb . git-notes    # when git-notes.html changes, signal safari

Note also websequencediagrams.com does a nice job of accepting text input 
for MSCs and rendering a graph for the book.

Basic recipe for generating a PDF:
bundle exec asciidoctor-pdf git-notes.adoc

Mon May  8 19:44:35 CDT 2017
----------------------------
Before you can run 'guard' you may need 'bundle install' to get guard happy 
(dependencies, you know).

Mon May 15 14:29:34 CDT 2017
----------------------------
Figured out the correct way to ivoke guard is 'bundle exec guard', even 
though guard shows up as an executable on my PATH.  Go figure.

Why is it when guard process my .adoc -> .html it looks different than 
when I run 'asciidoctor foo.adoc'??  
I generated a Guardfile ('bundle exec guard init') and commented out the 
asciidoctor stuff and added a line in the shell to invoke asciidoctor
directly, and it works great.  See also: https://github.com/guard/guard
