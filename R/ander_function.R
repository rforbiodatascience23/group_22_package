#' Ander_function
#' @import ggplot2
#' @param ander_2 here it goes the description of the parameter
#'
#' @return here it goes the description of function output
#' @export
#'
#'
ander_1 <- function(ander_2){

  #a split is made for every character in the input
  ander_3 <- ander_2 |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(ander_3, function(amino_acid) stringr::str_count(string = ander_2, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["Ander_2"]] <- rownames(counts)

  #it plots the number that every character appears
  ander_4 <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Ander_2, y = Counts, fill = Ander_2)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(ander_4)
}
