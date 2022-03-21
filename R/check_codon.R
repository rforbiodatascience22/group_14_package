#' Title
#'
#' @param codons 
#'
#' @return codon table
#' @export none
#'
#' @examples
check_codon <- function(codons){
  is_codon <- paste0(codonTable[codons], collapse = "")
  return(codonTable)
}