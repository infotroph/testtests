
install-deps: .
	Rscript -e "if(!require('roxygen2')) install.packages('roxygen2', repos = 'http://cran.rstudio.com')"

test: .
	Rscript -e "devtools::test('.', stop_on_failure = TRUE, stop_on_warning = FALSE)"

check: .
	Rscript -e "devtools::check('.')"
