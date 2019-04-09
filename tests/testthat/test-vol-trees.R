context("VolTree")
test_that("Tree volumn should not work if the input is not a dataframe ", {
   #pass non dataframe 
   x=2
  expect_error(volTrees(x),"The input value is not a dataframe",info="The input value passed to the Tree vloumn must be a dataframe")
 })