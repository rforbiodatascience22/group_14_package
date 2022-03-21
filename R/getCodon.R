#' Getting Codons
#'
#' @param RNAseq RNA sequence input
#' @param start Position to start the codon counting/dividing. Default start = 1
#'
#' @return Goes through a RNA sequence and create the triplet codons (extracting character vector substring by 3)
#' @export
#'
#' @examples 
getCodon <- function(RNASeq, start = 1){
  seqLen <- nchar(RNASeq)
  codons <- substring(seqLen,
                      first = seq(from = start, to = seqLen-3+1, by = 3),
                      last = seq(from = 3+start-1, to = seqLen, by = 3))
  return(codons)
}