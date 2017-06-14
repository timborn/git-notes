.PHONY: default pdf epub mobi

default:
	asciidoctor git-notes.adoc

pdf: 
	asciidoctor-pdf git-notes.adoc

epub:
	asciidoctor-epub3 git-notes.adoc

mobi:
	asciidoctor-epub3 -a ebook-format=kf8 git-notes.adoc
