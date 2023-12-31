% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/function4.R
\name{translate_codons}
\alias{translate_codons}
\title{Translation of codons}
\usage{
translate_codons(codons)
}
\arguments{
\item{codons}{sequence of codons put as input of the function}
}
\value{
codons translated into a sequence of amino acids in a single string
}
\description{
Translation of codons
}
\examples{
table <- c("AAA" = "Lys", "AAC" = "Asn", "AAG" = "Lys", "AAU" = "Asn")
codons <- c("AAA", "AAC", "AAG", "AAU")
amino_seq<-translate_codons(codons)
}
