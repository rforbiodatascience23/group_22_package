#' Translation of codons
#'
#' @param codons sequence of codons put as input of the function
#'
#' @return codons translated into a sequence of amino acids in a single string
#' @export
#'
#' @examples
#' table <- c("AAA" = "Lys", "AAC" = "Asn", "AAG" = "Lys", "AAU" = "Asn")
#' codons <- c("AAA", "AAC", "AAG", "AAU")
#' amino_seq<-translate_codons(codons)
translate_codons <- function(codons){
  amino_seq <- paste0(table[codons], collapse = "")
  return(amino_seq)
}
