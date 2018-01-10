# Overview of relevant files

* source: bib/references.bib
* output: _includes/refs.html
* format page: pages/publications.html

# Group by year

https://github.com/backtracking/bibtex2html/issues/2


# Stuff that didn't work

## Pandoc

http://docs.citationstyles.org/en/stable/primer.html
https://github.com/citation-style-language/styles/issues/1619
depends on getting good CSL file, tried playing with apa-cv-mod.csl but very finnicky. Hard also to get PDF links etc working right.

## BibLaTeX

Can get nice LaTeX / PDF output, but no easy translation to reasonable HTML. PDF links again challenging. Could possibly post-process the HTML output, maybe using ht4tex. Pandoc applied to refs.tex didn't work well.

## JabRef

https://help.jabref.org/en/CommandLine

Couldn't get it to work from command line. Current layouts did downcasing of some conference proceedings

## Other stuff to check

* https://github.com/backtracking/bibtex2html

* https://bitbucket.org/chhshen/bibtex2x
* https://www.scads.de/en/news-en/blog-en/347-orc-schlange?showall=&start=6
* https://mi.eng.cam.ac.uk/~bdrs2/bib2html.py
* https://www.spinellis.gr/sw/textproc/bib2xhtml/
* https://raw.githubusercontent.com/acla/bibtex2html/master/bibtex2html.php
* http://www.irisa.fr/lagadic/soft/bib2html/bib2html.pdf
* http://membres.lycos.fr/sgalland/english/tools/bib2html/, set of script LaTeX and Perl,byStéphane Galland.
* http://www-sop.inria.fr/epidaure/personnel/Gregoire.Malandain/codes/bibtex2html.html, C, by Gergoire Malandain.
* http://www.cs.cornell.edu/home/wkiri/bib2html/, flex and C, by Kiri Wagstaff.
* http://www.ctan.org/tex-archive/biblio/bibtex/utils/bibtools/, by David Kotz.
* http://www.research.att.com/mff/strudel/Bib2Html/README.html
