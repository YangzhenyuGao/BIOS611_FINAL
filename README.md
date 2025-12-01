Evaluation of Prognostic Determinants and Survival Outcomes in Breast Carcinoma

A comprehensive analysis of SEER Breast Cancer Data (2006-2010), utilizing statistical inference and machine learning to investigate survival determinants, biological associations, and demographic disparities.

Project Overview

This project analyzes a cohort of 4,024 breast cancer patients. Key analyses include:

Survival Analysis: Cox Proportional Hazards models to identify clinical determinants of mortality.

Biological Profiles: Investigation of age disparities between hormone-receptor subtypes.

Predictive Modeling: Comparison of Logistic Regression and Random Forest models for 5-year survival prediction.

Demographic Disparities: Assessment of racial and marital status impact on disease presentation stage.

Data Availability

The dataset used in this project is the SEER Breast Cancer Data.

Source: IEEE DataPort - SEER Breast Cancer Data

File Name: Breast_Cancer.csv

Getting Started

1. Building and Running the Container

To ensure reproducibility, this project is containerized using Docker.

Build the image:

docker build -t breast_cancer_analysis .


Run the container:

# This mounts your current directory to the container so outputs are saved locally
docker run -it --rm -v "$(pwd):/project" breast_cancer_analysis


2. Building the Report

Once inside the container (or if you have R/RStudio installed locally with make), you can generate the analysis report using the Makefile.

Generate the full report (HTML/PDF):

make report


Clean up generated files:

make clean


3. Developer Instructions

The project is organized using a Makefile to streamline the workflow.

make build: Builds the Docker image.

make run: Runs the Docker container with volume mapping.

make report: Renders the .Rmd file into the final report.

make clean: Removes generated output files.

Dependencies

R (>= 4.0.0)

Core Packages: tidyverse, survival, survminer, caret, randomForest, pROC, gtsummary