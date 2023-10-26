group_22_package
================

<!-- README.md is generated from README.Rmd. Please edit that file -->

# group22

<!-- badges: start -->
<!-- badges: end -->

``` r
library(group22)
```

<https://github.com/rforbiodatascience23/group_22_package>

## Authors

1.  **Ander Barrio**: s231938

2.  **Erikas Mikuzis**: s223164

3.  **Dionysios Dimitreas**: s232752

4.  **Angeliki Vliora**: s233059

5.  **Valeria Tedeschi**: s231945

## Introduction

This is a package done for the “R for Bio Data Science” subject. The aim
of this document is to explain the functions that have been implemented
inside our package.

## Function Demonstrations

### Function 1

The `randomDNAseq` function generates a random DNA sequence of a
specified length (`len`) by sampling from the four DNA bases (A, T, G,
and C) with replacement and concatenating them to create the sequence.

``` r
randomDNAseq <- function(len){
  sampleDNAseq <- sample(c("A", "T", "G", "C"), size = len, replace = TRUE)
  DNAseq <- paste0(sampleDNAseq, collapse = "")
  return(DNAseq)
}
```

### Example

``` r
print(randomDNAseq(5))
#> [1] "AAGCG"
```

### Function 2

The `transcription` function performs transcription, a biological
process, by converting DNA data into RNA data. It replaces all
occurrences of “T” (thymine, a DNA base) with “U” (uracil, an RNA base)
in the input data, effectively simulating the conversion of a DNA
sequence into an RNA sequence.

``` r
transcription <- function(data){
  transcript_data <- gsub("T", "U", data)
  return(transcript_data)
}
```

### Example

``` r
dna_seq <- c("A", "G", "A", "T", "T", "C", "T", "G", "C", "C", "T")
rna_seq <- transcription(dna_seq)
print(rna_seq)
#>  [1] "A" "G" "A" "U" "U" "C" "U" "G" "C" "C" "U"
```

### Function 3

The `translation` function takes a sequence of genetic data (likely
representing a portion of mRNA or a DNA sequence) and translates it into
codons, which are groups of three nucleotides that correspond to
specific amino acids. The function starts at the specified position
(defaulting to the beginning) and extracts non-overlapping sets of three
nucleotides at a time, creating a list of codons, which could then be
used for protein translation.

``` r
translation <- function(data, start = 1){
  amino <- nchar(data)
  codons <- substring(data,
                      first = seq(from = start, to = amino-3+1, by = 3),
                      last = seq(from = 3+start-1, to = amino, by = 3))
  return(codons)
}
```

### Example

``` r
data <- "ATGGCATCATGTAG"
start <- 1
result <- translation(data, start)
print(result)
#> [1] "ATG" "GCA" "TCA" "TGT"
```

### Function 4

The `translate_codons` function takes a list of codons (groups of three
nucleotides) as input and translates them into an amino acid sequence.
It does so by looking up the corresponding amino acid for each codon in
a predefined table and then concatenates these amino acids together to
form the final amino acid sequence. The function returns the amino acid
sequence as its output.

``` r
translate_codons <- function(codons){
  amino_seq <- paste0(table[codons], collapse = "")
  return(amino_seq)
}
```

### Example

``` r
table <- c("AAA" = "Lys", "AAC" = "Asn", "AAG" = "Lys", "AAU" = "Asn")
codons <- c("AAA", "AAC", "AAG", "AAU")
amino_seq<-translate_codons(codons)
print(amino_seq)
#> [1] "LysAsnLysAsn"
```

### Function 5

The `ander_1` function takes a character string as input. It extracts
the unique characters from the string and counts how many times each
unique character appears. Then, it creates a bar chart using the
`ggplot2` package to visually represent these character counts. The
resulting bar chart is returned by the function. In summary, it’s a
function that generates a bar chart to show the frequency of unique
characters in a given text string.

``` r
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
```

## Use Cases

The “group22” package offers a range of applications in data analysis
and bioinformatics. Here are some common use cases:

1.  **Genomic Data Analysis**: “group22” can be utilized for parsing,
    analyzing, and visualizing genomic data, making it valuable for
    genetic research, including identifying key genomic features and
    variations.

2.  **Sequence Manipulation**: Researchers can leverage the package to
    work with DNA and RNA sequences, such as transcription, translation,
    and other sequence-related tasks.

3.  **Bioinformatics Pipelines**: The package can be integrated into
    bioinformatics pipelines for tasks like sequence alignment, feature
    extraction, and sequence annotation.

4.  **Educational Tools**: “group22” serves as an educational resource
    for teaching molecular biology and genetics concepts. It can be used
    to demonstrate processes like transcription and translation in an
    interactive way.

5.  **Quality Control**: Bioinformaticians can use the package to
    perform quality control checks on sequence data, ensuring the
    integrity of genetic information.

## Future Functionality

While “group22” currently provides a range of functions for sequence
analysis and manipulation, there are potential areas for expansion. Some
functions that could be considered for future updates include:

1.  **Phylogenetic Analysis**: Adding functions for phylogenetic tree
    construction and analysis to support evolutionary studies.

2.  **Variant Calling**: Introducing features for detecting and
    analyzing genetic variants, such as single nucleotide polymorphisms
    (SNPs) and insertions/deletions.

3.  **Machine Learning Integration**: Incorporating machine learning
    algorithms for predictive modeling based on genetic data.

4.  **Enhanced Visualization**: Improving data visualization
    capabilities, including support for interactive plots and graphical
    representations of genetic data.

5.  **Cross-Platform Compatibility**: Ensuring compatibility and
    seamless integration with other bioinformatics tools and platforms.

By incorporating these and other potential functions, “group22” can
further empower researchers and analysts in the field of genomics and
bioinformatics, enabling more advanced and comprehensive genetic
analysis.

## Main point from Task 3

The way to add the packages to our own is to first add them to our
package dependencies with “usethis::use_package(”package_name”)“. If we
care about reproducibility, we can add”min_version = TRUE” to the
function call to specify a required minimum package version of the
dependency. We have to run “usethis::use_package” for both dependencies.

For the ggplot2 functions, we will use “ggplot2::function_name”
everywhere a ggplot2 function is used. Also add @import ggplot2 to the
function description.

Limiting dependencies in our package is good for simplicity,
reliability, and performance. However, it’s not always avoidable,
especially when you need niche functionality, integration, or adhere to
community standards. Balancing these factors is crucial when choosing
package dependencies.

Using `@importFrom package function` in a function description specifies
that a specific function from a package is needed for that function.
This information helps developers and tools understand the function’s
dependencies.

In contrast, `package::function()` is used within the code to explicitly
call a function from a package. It ensures that the function is properly
referenced in the code, but it doesn’t provide metadata about the
function’s usage.
