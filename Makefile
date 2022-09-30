.DEFAULT_GOAL := all

html : cleanhtml
	asciidoctor -a scripts=cjk -r asciidoctor-diagram adoc/*.adoc

pdf : cleanpdf
	asciidoctor-pdf -a scripts=cjk -r asciidoctor-diagram -a pdf-theme=default-with-fallback-font adoc/*.adoc

cleanhtml :
	rm -f adoc/*.html

cleanpdf :
	rm -f adoc/*.pdf

clean : cleanhtml cleanpdf

all : html pdf