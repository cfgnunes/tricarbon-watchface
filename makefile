PROJECT=00002CF8
SRC_FILES = $(shell find app/)

.PHONY: default help build clean

default: build

help:
	@echo "'make': Build the project."
	@echo "'make clean': Cleans up generated files."
	@echo

build: $(PROJECT).bin

$(PROJECT).bin: $(SRC_FILES) $(TGA_FILES:.tga=.png)
	@echo "Compiling..."
	@(cd app && zip -r ../$(PROJECT).bin .)
	@echo "Done!"
	@echo

clean:
	@echo "Cleaning up generated files..."
	@rm -f *.bin
	@echo "Done!"
	@echo
