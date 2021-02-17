SINGULARITY = /usr/local/bin/singularity
IMG = ppr-meta-0.1.0.img
DEF = image.def

run:
	sudo $(SINGULARITY) run $(IMG)

clean:
	rm -f $(IMG)

img: clean
	sudo $(SINGULARITY) build $(IMG) $(DEF)

sandbox: clean
	sudo $(SINGULARITY) build --sandbox $(IMG) $(DEF)

shell:
	sudo $(SINGULARITY) shell --writable $(IMG)
