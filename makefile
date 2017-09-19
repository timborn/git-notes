.PHONY: default pdf epub mobi

default:
	asciidoctor git-notes.adoc

pdf: 
	asciidoctor-pdf git-notes.adoc

epub:
	asciidoctor-epub3 git-notes.adoc

mobi:
	asciidoctor-epub3 -a ebook-format=kf8 git-notes.adoc

edit:
	@echo to set up for editing:
	@echo bundle exec guard	\# in one terminal
	@echo ./watch.rb . git-notes	\# in another terminal
	@echo safari git-notes.html
	@echo vi git-notes.adoc
