library(testthat)
library(group22)

test_that("randomDNAseq returns sequences of correct length", {
  len <- 50
  seq <- randomDNAseq(len)
  expect_equal(nchar(seq), len)  # Use nchar() instead of length()
})

test_that("randomDNAseq returns only valid DNA bases", {
  len <- 100
  seq <- randomDNAseq(len)
  valid_bases <- c("A", "T", "G", "C")
  all_valid <- all(strsplit(seq, NULL)[[1]] %in% valid_bases)
  expect_true(all_valid)
})

test_that("randomDNAseq returns a roughly even distribution of bases", {
  len <- 1e5
  seq <- randomDNAseq(len)
  freq <- table(strsplit(seq, NULL)[[1]])
  # Here, we're checking if any base occurs less than 20% or more than 30% of the time.
  # Adjust these numbers as appropriate for your desired level of "evenness".
  expect_true(all(freq >= 0.2 * len & freq <= 0.3 * len))
})
