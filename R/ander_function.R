#' Ander_function
#' @import ggplot2
#' @param ander_2 here it goes the description of the parameter
#'
#' @return here it goes the description of function output
#' @export
#'
#'
# Define the 'ander_1' function which takes 'ander_2' as input.
ander_1 <- function(ander_2){

  # Split the input string 'ander_2' into individual characters,
  # make them unique, and store the unique characters in 'ander_3'.
  ander_3 <- ander_2 |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  # For each unique character in 'ander_3', count how many times
  # it appears in the original 'ander_2' string and store the counts
  # in a data frame called 'counts'.
  counts <- sapply(ander_3, function(amino_acid) stringr::str_count(string = ander_2, pattern =  amino_acid)) |>
    as.data.frame()

  # Rename the columns of the 'counts' data frame for clarity.
  colnames(counts) <- c("Counts")
  counts[["Ander_2"]] <- rownames(counts)

  # Create a bar chart ('ander_4') using 'ggplot2' to visualize the
  # counts of unique characters. Customize the chart's appearance.
  ander_4 <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Ander_2, y = Counts, fill = Ander_2)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  # Return the generated bar chart ('ander_4').
  return(ander_4)
}

