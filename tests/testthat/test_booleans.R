# context("If these don't work we are in truh-bull")

# # skip_if_not_installed("foobar")

# test_that("TRUE is true", {
# 	expect_true(TRUE)
# })

# # test_that("FALSE is false",{
# # 	expect_error(stop("this isn't false at all!"))
# # })

# # # library(dplyr)

# # test_that("g 'works'", {
# # 	expect_equal(mtcars[,-1], g(mtcars))
# # })

# context("something else")

# test_that("printing prints",{
# 	expect_output(print(3))
# })

context("Optional bits")

test_that("optional features play nice with somePkg",{
	# skip_if_not_installed("somePkg")

	test_that("nested tests?", {
		expect_true(FALSE)
	})
	
	test_that("nested! tests!", {
		skip("broken even when somePkg installed")
		expect_equal(somePkg::three(), two()+1)
	})
	
	expect_equal(1,2)
})

test_that("this test not nested", {
	expect_false(TRUE)
})
