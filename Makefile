all: README.md

ReproducibleResearch.ctv: ReproducibleResearch.md buildxml.R
	pandoc -w html -o ReproducibleResearch.ctv ReproducibleResearch.md
	Rscript --vanilla -e 'source("buildxml.R")'

ReproducibleResearch.html: ReproducibleResearch.ctv
	Rscript --vanilla -e 'if(!require("ctv")) install.packages("ctv", repos = "http://cran.rstudio.com/"); ctv::ctv2html("ReproducibleResearch.ctv")'

README.md: ReproducibleResearch.html
	pandoc -w markdown_github -o README.md ReproducibleResearch.html
	sed -i.tmp -e 's|( \[|(\[|g' README.md
	sed -i.tmp -e 's| : |: |g' README.md
	sed -i.tmp -e 's|../packages/|http://cran.rstudio.com/web/packages/|g' README.md
	sed -i.tmp -e '4s/.*/| | |\n|---|---|/' README.md
	sed -i.tmp -e '4i*Do not edit this README by hand. Please see our \[guide to contributing\]\(CONTRIBUTING.md\) for details on how to suggest changes.*\n' README.md
	rm *.tmp

check:
	Rscript --vanilla -e 'if(!require("ctv")) install.packages("ctv", repos = "http://cran.rstudio.com/"); print(ctv::check_ctv_packages("ReproducibleResearch.ctv", repos = "http://cran.rstudio.com/"))'

checkurls:
	Rscript --vanilla -e 'source("checkurls.R")'

README.html: README.md
	pandoc --from=markdown_github -o README.html README.md
