# Test for stringDNA function #

# Load package(s)
library("devtools")

test_that("DNA generation", {
  expect_equal(stringDNA(8), "CGCGGTTG")
})
