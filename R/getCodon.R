#' Getting Codons
#'
#' @param RNAseq RNA sequence input as string.
#' @param start Position to start the codon counting/dividing. Default start = 1
#'
#' @return Character vector where each element is a codon.
#' @export

getCodon <- function(RNASeq, start = 1){
  seqLen <- nchar(RNASeq)
  codons <- substring(RNASeq,
                      first = seq(from = start, to = seqLen-3+1, by = 3),
                      last = seq(from = 3+start-1, to = seqLen, by = 3))
  return(codons)
}
