#' Summary of installed functions
#'
#' This functions generate a list of all installed packages, sorted by
#' individual folder. The main target is to install.
#'
#' @return a `data.frame` containing two columns. One for the library and one
#'    for the number of packages.
#' @export
#'
#' @examples
#' lib_summary()
lib_summary <- function(){
  pkgs <- utils::installed.packages()
  pkg_tbl <- table(pkgs[, "LibPath"])
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE)
  names(pkg_df) <- c("Library", "n_packages")
  pkg_df
}
