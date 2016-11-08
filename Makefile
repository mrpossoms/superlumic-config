.PHONY: all
all: install

.PHONY: install
install: vendor/superlumic
	./$< https://github.com/jacebrowning/superlumic-config

.PHONY: update
update:
	make vendor/superlumic --always-make 

vendor/superlumic:
	mkdir -p vendor
	curl -s https://raw.githubusercontent.com/superlumic/superlumic/master/superlumic > $@
	chmod a+x $@

.PHONY: clean
clean:
