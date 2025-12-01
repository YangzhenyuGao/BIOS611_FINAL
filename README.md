# Evaluation of Prognostic Determinants and Survival Outcomes in Breast Carcinoma

A comprehensive analysis of SEER Breast Cancer Data (2006–2010), utilizing statistical inference and machine learning to investigate survival determinants, biological associations, and demographic disparities.

## Project Overview

This project analyzes a cohort of 4,024 breast cancer patients. Key analyses include:

### 1. Survival Analysis
- Cox Proportional Hazards models
- Identification of clinical determinants of mortality

### 2. Biological Profiles
- Investigation of age disparities between hormone-receptor subtypes

### 3. Predictive Modeling
- Logistic Regression vs. Random Forest
- Target outcome: 5-year survival
- Performance evaluated using accuracy and AUC

### 4. Demographic Disparities
- Racial and marital status impact on stage at diagnosis
- Analysis of Stage III–IV vs Stage I–II presentation

## Data Availability

Dataset used in this project: [SEER Breast Cancer Data (2006–2010)](https://www.kaggle.com/datasets/reihanenamdari/breast-cancer/data)
And here is a [detailed description](https://ieee-dataport.org/open-access/seer-breast-cancer-data) for the biological meanings of each column.

This dataset of breast cancer patients provides information on population-based cancer statistics. The dataset involved female patients with infiltrating duct and lobular carcinoma breast cancer diagnosed in 2006-2010. Patients with unknown tumor size, examined regional LNs, regional positive LNs, and patients whose survival months were less than 1 month were excluded. 4024 patients were ultimately included.

## Getting Started

To ensure a consistent environment, this project is containerized using Docker.

---

## 1. Prerequisites

Please ensure the following are installed:

- Docker Desktop
- Git

---

## 2. Build the Docker Image

Navigate to the project root in your terminal and run: make build


This will build a Docker image named `breast_cancer_analysis` with all necessary R packages installed.

---

## 3. Run the Container

To start an interactive shell inside the container: make run


Your local project directory will be mounted to:/home/rstudio/project


inside the container. All generated files will be saved to your local folder.

---

## 4. Build the Report

Inside the container (or on your local machine if R is installed), run: make report


This will:

- Detect changes to BIOS611_FINAL.Rmd or Breast_Cancer.csv
- Render BIOS611_FINAL.html

---

## 5. Clean Up

To remove generated HTML/PDF files: make clean

---

## For Developers

The project uses a Makefile to automate key workflows.


### Key Components

- Dockerfile: Defines the environment (based on rocker/verse)
- Makefile: Automates build, run, and report rendering
- BIOS611_FINAL.Rmd: Main analysis source code













