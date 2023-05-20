IMG = $(wildcard assets/*.png)
IMG_BUILD = $(patsubst assets/%,build/%,$(IMG))

all: index.htm build/presentation.css build/presentation.js $(IMG_BUILD)

build:
	mkdir $@

build/%.png: assets/%.png build
	cp $< $@

.mtp/package.json: .mtp/version
	/Users/cristhianmotoche/Documents/code/pycon-2023-typing/venv/bin/python -m markdown_to_presentation run-backend $@

.mtp/node_modules: .mtp/version .mtp/package.json
	/Users/cristhianmotoche/Documents/code/pycon-2023-typing/venv/bin/python -m markdown_to_presentation run-backend $@

.mtp/style.scss: .mtp/version
	/Users/cristhianmotoche/Documents/code/pycon-2023-typing/venv/bin/python -m markdown_to_presentation run-backend $@

build/presentation.css: .mtp/version assets/_app.scss assets/_theme.scss .mtp/style.scss .mtp/node_modules | build
	/Users/cristhianmotoche/Documents/code/pycon-2023-typing/venv/bin/python -m markdown_to_presentation run-backend $@

build/presentation.js: .mtp/version .mtp/node_modules | build
	/Users/cristhianmotoche/Documents/code/pycon-2023-typing/venv/bin/python -m markdown_to_presentation run-backend $@

index.htm: .mtp/version slides.md
	/Users/cristhianmotoche/Documents/code/pycon-2023-typing/venv/bin/python -m markdown_to_presentation run-backend $@

