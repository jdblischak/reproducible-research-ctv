if(!require("stringr")) install.packages("stringr", repos="http://cran.rstudio.com")
template <- readLines("ReproducibleResearch.ctv")
pattern <- "pkg>[[:alnum:]]+[[:alnum:].]*[[:alnum:]]+"
out <- paste0(template, collapse = " ")
pkgs <- stringr::str_extract_all(out, pattern)[[1]]
pkgs <- unique(gsub("^pkg>", "", pkgs))
priority <- c('knitr','rmarkdown','packrat')
pkgs <- pkgs[ !pkgs %in% priority] # remove priority packages
pkgs <- lapply(as.list(sort(pkgs)), function(x) list(package=x))
output <- 
c(paste0('<CRANTaskView>
  <name>ReproducibleResearch</name>
  <topic>Reproducible Research</topic>
  <maintainer email="mxkuhn@gmail.com"> Max Kuhn</maintainer>
  <version>',Sys.Date(),'</version>'), 
  '  <info>',
  paste0("    ",template), 
  '  </info>',
  '  <packagelist>',
  # list priority packages explicitly
  paste0('    <pkg priority="core">', priority, '</pkg>', collapse = "\n"),
  # add all other packages from `pkgs`
  paste0('    <pkg>', unlist(unname(pkgs)), '</pkg>', collapse = "\n"),
  '  </packagelist>',
  '  <links>',
  '    <a href="https://github.com/topepo/Reproducible-Research-ctv">Reproducible Research TaskView on GitHub</a>',
  '  </links>',
  '</CRANTaskView>')

writeLines(output, "ReproducibleResearch.ctv")
