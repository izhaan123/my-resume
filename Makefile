.PHONY: all build clean watch help

# Default target
all: build

# Compile the resume
build:
	xelatex -interaction=nonstopmode -file-line-error resume.tex
	@echo "Resume compiled successfully! Output: resume.pdf"

# Clean auxiliary files
clean:
	rm -f *.aux *.log *.out *.toc *.fdb_latexmk *.fls *.synctex.gz *.xdv
	@echo "Cleaned auxiliary files"

# Clean everything including PDF
clean-all:
	rm -f *.aux *.log *.out *.toc *.fdb_latexmk *.fls *.synctex.gz *.xdv
	rm -f resume.pdf
	@echo "Cleaned all generated files"

# Watch for changes and auto-recompile
watch:
	@echo "Watching for changes... Press Ctrl+C to stop"
	@while true; do \
		inotifywait -q -e modify,create resume.tex resume/*.tex 2>/dev/null && \
		make build; \
	done

# Display help
help:
	@echo "Available targets:"
	@echo "  make build     - Compile resume.tex to PDF (default)"
	@echo "  make clean     - Remove auxiliary files"
	@echo "  make clean-all - Remove all generated files including PDF"
	@echo "  make watch     - Auto-recompile on file changes (requires inotify-tools)"
	@echo "  make help      - Show this help message"

