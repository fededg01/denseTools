# denseTools
## Installation
devtools::install_github("fededg01/denseTools")
## Building the Docker image
docker build -t dense_image .
## Example
Rscript -e 'library(denseTools); runsparseToDense("data", "matrix.mtx", 
"dense_matrix.csv")'