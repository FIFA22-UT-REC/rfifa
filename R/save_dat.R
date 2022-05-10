

#' Process and saves data of give user input (name and path)
#'
#' @param df a dataframe that contains columns `pos` and `overall`
#' @param position a string that filters the players of the df
#' @param out_path a string path(absolute) that tells where to save data
#'
#' @return a csv file that has name of `out_path/position.csv` format.
#' @export
#'
#' @examples
#' save_dat(data.frame(pos = c("A", "B"), overall = c(1,2)),"A", "../temp/")
#' save_dat(data.frame(pos = c("A","B"), overall = c(0,0)), "", "../temp/")
save_dat <- function(df,position,out_path) {
  if (!is.data.frame(df)) {
    stop ("Df must be a dataframe only")
  } else if (!is.character(position)) {
    stop ("position should be string only")
  } else if (!is.character(out_path)) {
    stop ("out_path should a string relative/absolute path")
  } else {
  df %>% dplyr::filter(pos == position) %>% dplyr::arrange(desc(overall)) %>%
    readr::write.csv(paste0(out_path, "/", position, ".csv"), fileEncoding = "UTF-8")

  #print(paste0(position , " data generated"))
  }
}

