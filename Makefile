DEPLOY := ewan@staff.ssh.inf.ed.ac.uk:/public/homepages/ewan/web/
SITE := _site/
JEKYLL := /opt/local/bin/jekyll
RSYNC_OPTS := -v -rz --checksum -e "ssh -o GSSAPIKeyExchange=no"

all: rsync

build: $(SITE)

$(SITE): 
	bundle exec jekyll build
#	$(JEKYLL) build

local:
	bundle exec jekyll serve

rsync: $(SITE)
	rsync $(RSYNC_OPTS) $(SITE) $(DEPLOY)


#rsync -v -rz --checksum --delete _site/ user@server:/path/
