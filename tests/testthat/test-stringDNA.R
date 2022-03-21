# Test for stringDNA function

test_that("DNA generation", {
  expect_equal(stringDNA(8), "CGCGGTTG")
})
