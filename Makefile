# Makefile for BIOS611 Final Project
# Variables
IMAGE_NAME = breast_cancer_analysis
CONTAINER_WORK_DIR = /home/rstudio/project
RMD_FILE = BIOS611_FINAL.Rmd
# Detect the output file name (assuming it outputs .html by default)
OUTPUT_FILE = BIOS611_FINAL.html
DATA_FILE = Breast_Cancer.csv

# Phony targets imply these are commands, not files
.PHONY: all build run report clean help

# Default target
all: report

# 1. Build the Docker image
build:
	docker build -t $(IMAGE_NAME) .

# 2. Run the Docker container interactively
# Mounts current directory to the container so files generated inside appear outside
run:
	docker run --rm -ti -v "$$(pwd)":$(CONTAINER_WORK_DIR) $(IMAGE_NAME) bash

# 3. Generate the Report
# This rule says: "OUTPUT_FILE depends on RMD_FILE and DATA_FILE"
# It will only re-run if the .Rmd or .csv has changed.
report: $(OUTPUT_FILE)

$(OUTPUT_FILE): $(RMD_FILE) $(DATA_FILE)
	Rscript -e "rmarkdown::render('$(RMD_FILE)')"

# 4. Clean up generated files
clean:
	rm -f $(OUTPUT_FILE)
	rm -f *.html *.pdf

# Help command to display available options
help:
	@echo "Makefile for Breast Cancer Analysis"
	@echo "Usage:"
	@echo "  make build   - Build the Docker image"
	@echo "  make run     - Run the container interactively"
	@echo "  make report  - Compile the RMarkdown report"
	@echo "  make clean   - Remove generated output files"