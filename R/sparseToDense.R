
#' convert a sparse matrix to a dense matrix 
#' 
#' @param input_file Name of the sparse matrix file
#' @param output_file Name of the dense matrix file
#' @return A named list with ncol and nrows
#' @examples 
#' 
#' \dontrun{
#' SparseToDense ("matrix.mtx", "dense_matrix.csv")
#' }
#' @importFrom Matrix readMM
#' @importFrom utils write.csv
#' @export
sparseToDense <- function(input_file, output_file = "dense_matrix.csv") { 
  sparse_mat <- readMM(input_file) 
dense_mat <- as.matrix(sparse_mat) 
write.csv(dense_mat, file = output_file, row.names = FALSE) 

return(list(n_rows = nrow(dense_mat), n_cols = ncol(dense_mat)))
} 