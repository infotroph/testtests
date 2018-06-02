#' A function
#'
#' Exists only so I can test changing its documentation.
#'
#' @param x the input
#' @return the output
#' @export
f <- function(x){x}

#' test if `::` on packages in Suggests causes R CMD check warning
#'
#' @param ... arguments, you know
#' @export
conditional <- function(...){
	if(requireNamespace("plotrix", quietly=TRUE)){
		return(plotrix::std.error(...))
	}else{
		print("you're missing out, but whatever")
		return(3)
	}
	
}

#' a function that forgets a namespace call
#'
#' uses dplyr::select but doesn't call it that
#'
#' @param df a dataframe
#' @export
g <- function(df){
	select(df, -1) 
}