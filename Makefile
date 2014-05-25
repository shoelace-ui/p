PORT  ?= 3030
SERVE ?= ./node_modules/.bin/serve
JADE  ?= ./node_modules/.bin/jade

gh-pages: index.html

index.html: test/index.jade
	$(JADE) --path $^ < $^ > $@

serve:
	@open http://localhost:$(PORT)/index.html
	$(SERVE) . --port $(PORT)

.PHONY: gh-pages serve
