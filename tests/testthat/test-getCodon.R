#Testing the getCodon function for working

test_that("outputs a character vector dividing by 3", {
  expect_equal(getCodon("UCGUUA", start = 1), c("UCG","UUA"))
})

