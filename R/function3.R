#' translation
#'
#' @param data sequence data
#'
#' @return codons related to amino acids
#' @export
#'
#'
#'
translation <- function(data, start = 1){
  amino <- nchar(data)
  codons <- substring(data,
                      first = seq(from = start, to = amino-3+1, by = 3),
                      last = seq(from = 3+start-1, to = amino, by = 3))
  return(codons)
}
