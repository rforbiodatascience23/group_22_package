#' Title
#'
#' @param data
#'
#' @return RNA sequence from initial DNA data
#' @export
#'
#' @examples
#' dna_seq <- c("A", "G", "A", "T", "T", "C", "T", "G", "C", "C", "T")
#' rna_seq <- transription(dna_seq)
transcription <- function(data){
  transcript_data <- gsub("T", "U", data)
  return(transcript_data)
}
