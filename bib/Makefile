OUT := refs.html
OUT_DIR := ../_includes

html:
	pandoc --filter pandoc-citeproc --csl apa-cv.csl references.md -o $(OUT_DIR)/$(OUT)

copy:
	cp -f $(OUT) $(OUT_DIR)/$(OUT)




