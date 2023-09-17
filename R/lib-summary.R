#' Summary of installed functions
#'
#' This functions generate a list of all installed packages, sorted by
#' individual folder. The main target is to install.
#'
#' @param sizes logical indicating whether or not calculate the directory size
#'
#' @return a `data.frame` containing two columns. One for the library and one
#'    for the number of packages.
#' @export
#'
#' @examples
#' lib_summary()
lib_summary <- function(sizes = FALSE){
  if(!is.logical(sizes)){
    stop("'sizes' must be TRUE or FALSE")
  }
  pkgs <- utils::installed.packages()
  pkg_tbl <- table(pkgs[, "LibPath"])
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE)
  names(pkg_df) <- c("Library", "n_packages")

  if(sizes){
    pkg_df$lib_size <- sapply(
      pkg_df$Library,
      function(x){
        sum(fs::file_size(fs::dir_ls(x, recurse = TRUE)))
      }
    )
  }
  pkg_df
}
