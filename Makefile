DEPLOY := ewan@staff.ssh.inf.ed.ac.uk:/public/homepages/ewan/web/
SITE := _site/
JEKYLL := /opt/local/bin/jekyll
RSYNC_OPTS := -v -rz --checksum -e "ssh -o GSSAPIKeyExchange=no"
PORT := 4020

all: rsync

build: $(SITE)

.PHONY: $(SITE)

$(SITE):
	bundle exec jekyll build
#	$(JEKYLL) build

local:
	bundle exec jekyll serve --port $(PORT) --config _config.yml,_config_dev.yml

rsync: $(SITE)
	rsync $(RSYNC_OPTS) $(SITE) $(DEPLOY)

clean:
	rm -rf $(SITE)/*


#rsync -v -rz --checksum --delete _site/ user@server:/path/
