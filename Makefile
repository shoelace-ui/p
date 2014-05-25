PORT ?= 3030
SERVE ?= ./node_modules/.bin/serve

test:
	@open http://localhost:$(PORT)/$@/index.jade
	$(SERVE) . --port $(PORT)

.PHONY: test
