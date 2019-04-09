
test_that("Test if input value pass to tree volumn is a dataframe ", {
  x=2
  #vol.Trees<-volTrees(x)
  
  is.data.frame()
  
  expect_equal(is.data.frame(x),TRUE,info="The input value passed to the Tree vloumn must be a dataframe")
})