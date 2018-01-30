context("If these don't work we are in truh-bull")

teardown(
	print(packageVersion("testthat"))
)

test_that("TRUE is true", {
	expect_true(TRUE)
})

test_that("FALSE is false",{
	expect_error(stop("this isn't false at all!"))
})
