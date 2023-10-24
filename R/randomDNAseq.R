#' randomDNAseq
#'
#' @param len lenght of the sequence
#'
#' @return random sample of DNAseq of the length we want
#' @export
#'
#' @examples
randomDNAseq <- function(len){
  sampleDNAseq <- sample(c("A", "T", "G", "C"), size = len, replace = TRUE)
  DNAseq <- paste0(sampleDNAseq, collapse = "")
  return(DNAseq)
}
