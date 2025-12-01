# use the official image (Supports both M1/M2 and Intel Macs/Windows)
FROM rocker/verse:latest

# Update system libraries if needed (optional, but good practice)
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Install R packages required for the analysis
# Utilizing multiple cores for faster installation if possible
RUN R -e "install.packages(c('survival', 'survminer', 'caret', 'randomForest', 'pROC', 'gtsummary', 'gridExtra', 'corrplot', 'pacman'), repos='http://cran.rstudio.com/')"

# Set the working directory inside the container
WORKDIR /home/rstudio/project

# Copy the current directory contents into the container
COPY . .

# Default command
CMD ["bash"]