INCLUDES := ../_includes/
HTML := bib.html

install: html
	mv  $(HTML) $(INCLUDES)

html:
	bibout -t pubs-by-year.rhtml -o $(HTML) references.bib


