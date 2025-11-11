# my-resume
Modern, ATS-friendly LaTeX resume

## Building the Resume

This repository uses a modern, single-column LaTeX template optimized for both human readability and ATS compatibility. The resume compiles using pdflatex.

### Prerequisites

- TeX Live (2020 or later) or MiKTeX
- pdflatex compiler (included in standard LaTeX distributions)
- make (optional, for using Makefile)

### Build Commands

**Using Makefile:**
```bash
# Compile the resume (generates resume.pdf)
make

# or explicitly
make build

# Clean auxiliary files
make clean

# Clean all generated files including PDF
make clean-all

# Auto-recompile on file changes (requires inotify-tools)
make watch
```

**Manual Compilation:**
```bash
# Compile directly with pdflatex
pdflatex resume_new.tex
mv resume_new.pdf resume.pdf
```

### Template Features

- **ATS-Friendly**: Single-column layout with clean structure for optimal parsing by Applicant Tracking Systems
- **Modern Design**: Professional appearance with subtle color accents
- **Stable**: Uses standard LaTeX packages that work reliably across all TeX Live versions
- **Easy to Edit**: All content in one file (`resume_new.tex`) with clear sections
- **Clickable Links**: Email, website, GitHub, and LinkedIn links are all clickable in the PDF

### Editing with AI

You can use Cursor or other AI tools to directly edit `resume_new.tex`. The file is well-structured with clear sections:
- Header with contact information
- Education
- Work Experience  
- Co-op Work Experience
- Skills

After making changes, run `make` to compile and generate the updated PDF.

### Customization

**Colors:** Edit the color definitions in the preamble:
```latex
\definecolor{primarycolor}{RGB}{0, 102, 204}  % Change for different accent color
```

**Margins:** Adjust the geometry package settings:
```latex
\usepackage[margin=0.75in]{geometry}  % Change margin size
```

**Font Size:** Change the document class option:
```latex
\documentclass[11pt,letterpaper]{article}  % Try 10pt or 12pt
```

### Template Information

This is a custom modern resume template built with stable LaTeX packages. The previous Awesome-CV template has been archived in `old_template/` due to compatibility issues with newer TeX distributions.
