test_that("checks if function 4 works", {
  expect_equal( translate_codons(c("AAA", "AAC", "AAG", "AAU")),"KNKN")
})

