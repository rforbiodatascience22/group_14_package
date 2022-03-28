#' Title
#'
#' @param codons codons
#'
#' @return codon table
#' @export 
#'
check_codon <- function(codons){
  is_codon <- paste0(codonTable[codons], collapse = "")
  return(codonTable)
}