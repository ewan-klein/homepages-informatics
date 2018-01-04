OUT := refs.html
OUT_DIR := ../_includes
OPTS := -o $(OUT_DIR)/refs -nokeys -d -r -nobibsource --no-keywords --no-abstract -nodoc 

# CSL := ./apa-cv-mod.csl
# JABREF := /Applications/JabRef.app/Contents/java/app/JabRef-4.1.jar
# JAB_OPS := --nogui --output $(OUT), HTML-Hanging-Indent

all:
	bibtex2html $(OPTS) references.bib

# pandoc:
# 	pandoc --filter pandoc-citeproc --csl $(CSL) references.md -o $(OUT_DIR)/$(OUT)

# jabref:
# 	java -jar $(JABREF) $(JAB_OPS) references.bib

# temp:
# 	pandoc refs.tex -o refs.html --bibliography references.bib





