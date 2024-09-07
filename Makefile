# Makefile Template for C/C++ project with subdirectories

# Find all subdirectories
SUBDIRS := $(wildcard */)

# Default target
all: $(SUBDIRS)

# Rule to make all subdirectories
$(SUBDIRS):
	@echo "Make in $@"
	cp ./.HiddenMakefile $@/Makefile
	@$(MAKE) -C $@
	@echo "Done in $@"
	@echo ""

# Clean target
clean:
	@for dir in $(SUBDIRS); do \
		echo "Cleaning in $$dir"; \
		$(MAKE) -C $$dir clean; \
		echo ""; \
	done

# Phony targets
.PHONY: all clean $(SUBDIRS)
