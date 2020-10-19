DEPLOY := ewan@staff.ssh.inf.ed.ac.uk:/public/homepages/ewan/web/
SITE := _site/
JEKYLL := /opt/local/bin/jekyll
BIB := _includes/bib.html

#RSYNC_OPTS := -v -rz --checksum -e "ssh -o GSSAPIKeyExchange=no"
RSYNC_OPTS := -azv
PORT := 4020

all: rsync

build: bib $(SITE) 

.PHONY: $(SITE)

$(SITE):
	bundle exec jekyll build
#	$(JEKYLL) build

bib: _bib/references.bib
	$(MAKE) -C _bib

local:
	bundle exec jekyll serve --port $(PORT) --config _config.yml

rsync: $(SITE)
	rsync $(RSYNC_OPTS) $(SITE) $(DEPLOY)

clean:
	rm -rf $(SITE)/*


#rsync -v -rz --checksum --delete _site/ user@server:/path/
