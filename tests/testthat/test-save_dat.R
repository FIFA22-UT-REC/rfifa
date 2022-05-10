# Test inputs

wr_df1 <- c(1,5,10)
wr_df2 <- "hey"
wr_df3 <- list(list("a","b","c"))
co_df <- data.frame(pos = c("A", "B"), overall = c(1,2))

wr_pos1 <- 100
wr_pos2 <- list(0,5,0.25)
wr_pos3 <- matrix(3)
co_pos1 = "A"
co_pos2 = "B"

wr_path1 = data.frame(x = "A", y = "B")
wr_path2 = 1250000
wr_path3 = list("a", "b", "c", "d")
wr_path3 = "gag"
co_path = "test/"

# Test outputs    <- These are possible variables for correct outputs, uncomment
# to use those.
#df_outA = data.frame(pos = c("A", "B"), overall = c(2,1))
#df_outB = data.frame(pos = c("B", "A"), overall = c(2,1))
#csv_A = write.csv(df_out, "test/A.csv")
#csv_B = write.csv(df_out, "test/B.csv")

# Tests

# MISSING TESTS FOR CORRECT OUTPUT

#test_that("output is csv") {
#  write.csv(co_out1)
#}


test_that("Df should a dataframe", {
  expect_error(save_dat(wr_df1, co_pos1, co_path))
  expect_error(save_dat(wr_df2, co_pos1, co_path))
  expect_error(save_dat(wr_df3, co_pos1, co_path))
  expect_error(save_dat(wr_df1, co_pos2, co_path))
  expect_error(save_dat(wr_df2, co_pos2, co_path))
  expect_error(save_dat(wr_df3, co_pos2, co_path))
})

test_that("position should be string only", {
  expect_error(save_dat(co_df, wr_pos1, co_path))
  expect_error(save_dat(co_df, wr_pos2, co_path))
  expect_error(save_dat(co_df, wr_pos3, co_path))

})

test_that("out_path should be string only", {
  expect_error(save_dat(co_df, co_pos1, wr_path1))
  expect_error(save_dat(co_df, co_pos2, wr_path1))
  expect_error(save_dat(co_df, co_pos1, wr_path2))
  expect_error(save_dat(co_df, co_pos2, wr_path2))
  expect_error(save_dat(co_df, co_pos1, wr_path3))
  expect_error(save_dat(co_df, co_pos2, wr_path3))
})




