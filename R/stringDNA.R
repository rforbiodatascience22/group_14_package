#' stringDNA
#' 
#' @description Function that generates a string of DNA bases with size given as function argument.
#'
#' @param size Integer defining length of DNA string build of A, T, G and C. (Default is 1)
#'
#' @return A string of DNA characters.
#' @export

stringDNA <- function(size = 1){
  set.seed(50)
  sampleDNA <- sample(c("A", "T", "G", "C"), size = size, replace = TRUE)
  strDNA <- paste0(sampleDNA, collapse = "")
  return(strDNA)
}