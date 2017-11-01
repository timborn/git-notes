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

Favorite Browser Pages To Keep Handy
http://brettterpstra.com/2011/03/07/watch-for-file-changes-and-refresh-your-browser-automatically/
http://asciidoctor.org

Mon May 15 14:29:34 CDT 2017
----------------------------
Figured out the correct way to ivoke guard is 'bundle exec guard', even 
though guard shows up as an executable on my PATH.  Go figure.

Why is it when guard process my .adoc -> .html it looks different than 
when I run 'asciidoctor foo.adoc'??  
I generated a Guardfile ('bundle exec guard init') and commented out the 
asciidoctor stuff and added a line in the shell to invoke asciidoctor
directly, and it works great.  See also: https://github.com/guard/guard

Wed Jun  7 15:44:30 CDT 2017
----------------------------
asciidoctor-epub3 git-notes.adoc
asciidoctor-epub3 -a ebook-format=kf8 git-notes.adoc

Neither of these work (yet).  I made git-notes.adoc a 'book' type, which cleared some of the errors, 
but some remain.

Thu Jun  8 16:34:06 CDT 2017
----------------------------
https://github.com/asciidoctor/asciidoctor-epub3#structuring-your-manuscript

Wed Jun 14 07:03:16 CDT 2017
----------------------------
Sharing the html is insufficient.  The images/ directory needs to go with, and be placed next to the html, 
as it makes references to those images.

Tue Sep 19 14:06:08 CDT 2017
----------------------------
TODO: add basic asciidoc documentation here so I can search for things while
flying.
