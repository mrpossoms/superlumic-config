.PHONY: all
all: install

.PHONY: install
install: vendor/superlumic
	./$< https://github.com/jacebrowning/superlumic-config

vendor/superlumic:
	mkdir -p vendor
	curl -s https://raw.githubusercontent.com/jacebrowning/superlumic/master/superlumic > $@
	chmod a+x $@

.PHONY: clean
clean:
	rm -rf vendor
