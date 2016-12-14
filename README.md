CRAN Task View: Reproducible Research
-------------------------------------

*Do not edit this README by hand. Please see our [guide to contributing](CONTRIBUTING.md) for details on how to suggest changes.*

| | |
|---|---|
|-----------------|--------------------------------------------------------|
| **Maintainer:** | Max Kuhn                                               |
| **Contact:**    | mxkuhn at gmail.com                                    |
| **Version:**    | 2016-12-20                                             |
| **URL:**        | <https://CRAN.R-project.org/view=ReproducibleResearch> |

This Task View contains information about R packages that can be used for reproducible research. The base version of R does not ship with many tools for reproducible research Thankfully, there are an increasingly large number of tools contributed by the community, and we aim to list many of them here.

If you have any comments or suggestions for additions or improvements for this Task View, go to GitHub and [submit an issue](https://github.com/topepo/Reproducible-Research-ctv/issues), or make some changes to `ReproducibleResearch.md` and [submit a pull request](https://github.com/topepo/Reproducible-Research-ctv/pulls). Please read our [guide to contributors](https://github.com/topepo/Reproducible-Research-ctv/CONTRIBUTING.md) before making a pull request. If you can't contribute on GitHub, [send an email](mailto:max.kuhn@pfizer.com). If you have an issue with one of the packages discussed below, please contact the maintainer of that package.

The goal of reproducible research is to tie specific instructions to data analysis and experimental data so that scholarship can be recreated, better understood and verified. Packages in R for this purpose can be split into groups for: literate programming, package reproducibility, code/data formatting tools, format converters, and object caching.

Literate Programming
====================

The primary way that R facilitates reproducible research is using a document that is a combination of content and data analysis code. The `Sweave` function (in the base R utils package) and the [knitr](http://cran.rstudio.com/web/packages/knitr/index.html) package can be used to blend the subject matter and R code so that a single document defines the content and the analysis. The [brew](http://cran.rstudio.com/web/packages/brew/index.html) and [R.rsp](http://cran.rstudio.com/web/packages/R.rsp/index.html) packages contain alternative approaches to embedding R code into various markups.

The resources for literate programming are best organized by the document type/markup language:

LaTeX
-----

Both `Sweave` and [knitr](http://cran.rstudio.com/web/packages/knitr/index.html) can process LaTeX files. [lazyWeave](http://cran.rstudio.com/web/packages/lazyWeave/index.html) can create LaTeX documents from scratch.

Object Conversion Functions:

-   *summary tables/statistics*: [Hmisc](http://cran.rstudio.com/web/packages/Hmisc/index.html), [NMOF](http://cran.rstudio.com/web/packages/NMOF/index.html), [papeR](http://cran.rstudio.com/web/packages/papeR/index.html), [quantreg](http://cran.rstudio.com/web/packages/quantreg/index.html), [rapport](http://cran.rstudio.com/web/packages/rapport/index.html), [reporttools](http://cran.rstudio.com/web/packages/reporttools/index.html), [sparktex](http://cran.rstudio.com/web/packages/sparktex/index.html), [tables](http://cran.rstudio.com/web/packages/tables/index.html), [xtable](http://cran.rstudio.com/web/packages/xtable/index.html), [ztable](http://cran.rstudio.com/web/packages/ztable/index.html)
-   *tables/cross-tabulations*: [compareGroups](http://cran.rstudio.com/web/packages/compareGroups/index.html), [Hmisc](http://cran.rstudio.com/web/packages/Hmisc/index.html), [lazyWeave](http://cran.rstudio.com/web/packages/lazyWeave/index.html), [knitLatex](http://cran.rstudio.com/web/packages/knitLatex/index.html), [knitr](http://cran.rstudio.com/web/packages/knitr/index.html), [reporttools](http://cran.rstudio.com/web/packages/reporttools/index.html), [ztable](http://cran.rstudio.com/web/packages/ztable/index.html)
-   *graphics*: [animation](http://cran.rstudio.com/web/packages/animation/index.html), [Hmisc](http://cran.rstudio.com/web/packages/Hmisc/index.html), `grDevices:::pictex`, [sparktex](http://cran.rstudio.com/web/packages/sparktex/index.html), [tikzDevice](http://cran.rstudio.com/web/packages/tikzDevice/index.html)
-   *statistical models/methods*: [apsrtable](http://cran.rstudio.com/web/packages/apsrtable/index.html), [memisc](http://cran.rstudio.com/web/packages/memisc/index.html), [quantreg](http://cran.rstudio.com/web/packages/quantreg/index.html), [r2lh](http://cran.rstudio.com/web/packages/r2lh/index.html), [rms](http://cran.rstudio.com/web/packages/rms/index.html), [stargazer](http://cran.rstudio.com/web/packages/stargazer/index.html), [suRtex](http://cran.rstudio.com/web/packages/suRtex/index.html), [TeachingSampling](http://cran.rstudio.com/web/packages/TeachingSampling/index.html), [texreg](http://cran.rstudio.com/web/packages/texreg/index.html), [xtable](http://cran.rstudio.com/web/packages/xtable/index.html), [ztable](http://cran.rstudio.com/web/packages/ztable/index.html)
-   *bibtex*: [bibtex](http://cran.rstudio.com/web/packages/bibtex/index.html) and [RefManageR](http://cran.rstudio.com/web/packages/RefManageR/index.html)
-   *others*: [latex2exp](http://cran.rstudio.com/web/packages/latex2exp/index.html) converts LaTeX equations to `plotmath` expressions.

Miscellaneous Tools

-   [Hmisc](http://cran.rstudio.com/web/packages/Hmisc/index.html) contains a function to correctly escape special characters. [resumer](http://cran.rstudio.com/web/packages/resumer/index.html) creates resumes. Standardized exams can be created using the [exams](http://cran.rstudio.com/web/packages/exams/index.html) package.

HTML
----

The [knitr](http://cran.rstudio.com/web/packages/knitr/index.html) package can process HTML files directly. `Sweave` can also work with HTML by way of the [R2HTML](http://cran.rstudio.com/web/packages/R2HTML/index.html) package. [Kmisc](http://cran.rstudio.com/web/packages/Kmisc/index.html) and [lazyWeave](http://cran.rstudio.com/web/packages/lazyWeave/index.html) can create HTML format documents from scratch.

Object Conversion Functions:

-   *summary tables/statistics*: [stargazer](http://cran.rstudio.com/web/packages/stargazer/index.html)
-   *tables/cross-tabulations*: [compareGroups](http://cran.rstudio.com/web/packages/compareGroups/index.html), [DT](http://cran.rstudio.com/web/packages/DT/index.html), [formattable](http://cran.rstudio.com/web/packages/formattable/index.html), [htmlTable](http://cran.rstudio.com/web/packages/htmlTable/index.html), [HTMLUtils](http://cran.rstudio.com/web/packages/HTMLUtils/index.html), [hwriter](http://cran.rstudio.com/web/packages/hwriter/index.html), [Kmisc](http://cran.rstudio.com/web/packages/Kmisc/index.html), [knitr](http://cran.rstudio.com/web/packages/knitr/index.html), [lazyWeave](http://cran.rstudio.com/web/packages/lazyWeave/index.html), [SortableHTMLTables](http://cran.rstudio.com/web/packages/SortableHTMLTables/index.html), [texreg](http://cran.rstudio.com/web/packages/texreg/index.html), [ztable](http://cran.rstudio.com/web/packages/ztable/index.html)
-   *statistical models/methods*: [r2lh](http://cran.rstudio.com/web/packages/r2lh/index.html), [rapport](http://cran.rstudio.com/web/packages/rapport/index.html), [stargazer](http://cran.rstudio.com/web/packages/stargazer/index.html), [xtable](http://cran.rstudio.com/web/packages/xtable/index.html)
-   *others*: [knitcitations](http://cran.rstudio.com/web/packages/knitcitations/index.html), [RefManageR](http://cran.rstudio.com/web/packages/RefManageR/index.html)

Miscellaneous Tools: [htmltools](http://cran.rstudio.com/web/packages/htmltools/index.html) has various tools for working with HTML. [tufterhandout](http://cran.rstudio.com/web/packages/tufterhandout/index.html) and [tufte](http://cran.rstudio.com/web/packages/tufte/index.html) provide templates for creating Tufte-style handouts

Markdown
--------

The [knitr](http://cran.rstudio.com/web/packages/knitr/index.html) package can process markdown files without assistance into HTML, Microsoft Word, and PDF files. The packages [markdown](http://cran.rstudio.com/web/packages/markdown/index.html) and [rmarkdown](http://cran.rstudio.com/web/packages/rmarkdown/index.html) have general tools for working with documents in markdown. [Kmisc](http://cran.rstudio.com/web/packages/Kmisc/index.html) and [lazyWeave](http://cran.rstudio.com/web/packages/lazyWeave/index.html) can create markdown format documents from scratch. Also, the [ascii](http://cran.rstudio.com/web/packages/ascii/index.html) package can write R objects to the [AsciiDoc](http://www.methods.co.nz/asciidoc/) format.

Object Conversion Functions:

-   *summary tables/statistics*: [papeR](http://cran.rstudio.com/web/packages/papeR/index.html)
-   *tables/cross-tabulations*: [DT](http://cran.rstudio.com/web/packages/DT/index.html), [formattable](http://cran.rstudio.com/web/packages/formattable/index.html), [htmlTable](http://cran.rstudio.com/web/packages/htmlTable/index.html), [knitr](http://cran.rstudio.com/web/packages/knitr/index.html), [Kmisc](http://cran.rstudio.com/web/packages/Kmisc/index.html), [lazyWeave](http://cran.rstudio.com/web/packages/lazyWeave/index.html), [papeR](http://cran.rstudio.com/web/packages/papeR/index.html)
-   *statistical models/methods*: [pander](http://cran.rstudio.com/web/packages/pander/index.html), [papeR](http://cran.rstudio.com/web/packages/papeR/index.html), [rapport](http://cran.rstudio.com/web/packages/rapport/index.html), [texreg](http://cran.rstudio.com/web/packages/texreg/index.html)
-   *others*: [RefManageR](http://cran.rstudio.com/web/packages/RefManageR/index.html)

OpenDocument Format (ODF)
-------------------------

The [odfWeave](http://cran.rstudio.com/web/packages/odfWeave/index.html) package can process ODF files.

Object Conversion Functions:

-   *tables/cross-tabulations*: [odfWeave](http://cran.rstudio.com/web/packages/odfWeave/index.html)
-   *statistical models/methods*: [odfWeave.survey](http://cran.rstudio.com/web/packages/odfWeave.survey/index.html), [rapport](http://cran.rstudio.com/web/packages/rapport/index.html)

Microsoft Formats
-----------------

The [ReporteRs](http://cran.rstudio.com/web/packages/ReporteRs/index.html) (formerly R2DOCX) package can create `docx` and `pptx` files. [R2wd](http://cran.rstudio.com/web/packages/R2wd/index.html) (windows only) can also create Word documents from scratch and [R2PPT](http://cran.rstudio.com/web/packages/R2PPT/index.html) (also windows only) can create PowerPoint slides. The [rtf](http://cran.rstudio.com/web/packages/rtf/index.html) package does the same for Rich Text Format documents.

Object Conversion Functions:

-   *tables/cross-tabulations*: [apaStyle](http://cran.rstudio.com/web/packages/apaStyle/index.html)

Miscellaneous Tools
===================

Package Reproducibility
-----------------------

R also has tools for ensuring that specific packages versions can be required for analyses. [packrat](http://cran.rstudio.com/web/packages/packrat/index.html), [checkpoint](http://cran.rstudio.com/web/packages/checkpoint/index.html), [rbundler](http://cran.rstudio.com/web/packages/rbundler/index.html) install packages required for a project to a local archive as they existed at a specified point in time. This allows specific package versions to be maintained over time and different users. [miniCRAN](http://cran.rstudio.com/web/packages/miniCRAN/index.html) facilitates the creation of local CRAN-like repositories.

Formatting Tools
----------------

[formatR](http://cran.rstudio.com/web/packages/formatR/index.html), [highlight](http://cran.rstudio.com/web/packages/highlight/index.html), [highr](http://cran.rstudio.com/web/packages/highr/index.html), and [SweaveListingUtils](http://cran.rstudio.com/web/packages/SweaveListingUtils/index.html) can be used to color and/or format R code.

Packages [humanFormat](http://cran.rstudio.com/web/packages/humanFormat/index.html), [lubridate](http://cran.rstudio.com/web/packages/lubridate/index.html), [prettyunits](http://cran.rstudio.com/web/packages/prettyunits/index.html), and [rprintf](http://cran.rstudio.com/web/packages/rprintf/index.html) have functions to better format data.

Format Convertors
-----------------

[pander](http://cran.rstudio.com/web/packages/pander/index.html) can be used for rendering R objects into [Pandoc's](http://pandoc.org/) markdown. [knitr](http://cran.rstudio.com/web/packages/knitr/index.html) has the function `pandoc` that can call an installed version of [Pandoc](http://pandoc.org/) to convert documents between formats such as Markdown, HTML, LaTeX, PDF and Word. [tth](http://cran.rstudio.com/web/packages/tth/index.html) facilitates TeX to HTML/MathML conversions. LaTeX to Rich Text Format conversions can be done using the [connect3](http://cran.rstudio.com/web/packages/connect3/index.html) package.

Object Caching Packages
-----------------------

When using `Sweave` and [knitr](http://cran.rstudio.com/web/packages/knitr/index.html) it can be advantageous to *cache* the results of time consuming code chunks if the document will be re-processed (i.e. during debugging). [knitr](http://cran.rstudio.com/web/packages/knitr/index.html) facilitates object caching and the Bioconductor package [<span class="BioC">weaver</span>](http://www.Bioconductor.ohttp://cran.rstudio.com/web/packages/release/bioc/html/weaver.html) can be used with `Sweave`.

Non-literate programming packages to facilitating caching/archiving are [R.cache](http://cran.rstudio.com/web/packages/R.cache/index.html) and [archivist](http://cran.rstudio.com/web/packages/archivist/index.html).

Related links
=============

-   [The Sweave Homepage](http://www.statistik.uni-muenchen.de/~leisch/Sweave/)
-   [knitr: Elegant, flexible and fast dynamic report generation with R](http://yihui.name/knitr/)
-   [<span class="BioC">weaver</span>](http://www.Bioconductor.ohttp://cran.rstudio.com/web/packages/release/bioc/html/weaver.html)
-   [Wikipedia: Literate Programming](http://en.wikipedia.org/wiki/Literate_Programming)
-   [Harrell: Site for Reproducible Research](http://biostat.mc.vanderbilt.edu/wiki/Main/StatReport)
-   [Koenker, Zeileis: On Reproducible Econometric Research](http://www.econ.uiuc.edu/~roger/research/repro/)
-   [Peng: Reproducible Research and Biostatistics](http://biostatistics.oxfordjournals.org/cgi/reprint/10/3/405)
-   [Rossini, Leisch: Literate Statistical Practice](http://www.bepress.com/uwbiostat/paper194/)
-   [Baggerly, Coombes: Deriving Chemosensitivity from Cell Lines: Forensic Bioinformatics and Reproducible Research in High-Throughput Biology](http://dx.doi.org/10.1214/09-AOAS291)
-   [Leisch: Sweave, Part I: Mixing R and LaTeX](http://www.R-project.org/doc/Rnews/Rnews_2002-3.pdf)
-   [Leisch: Sweave, Part II: Package Vignettes](http://www.R-project.org/doc/Rnews/Rnews_2003-2.pdf)
-   [Betebenner: Using Control Structures with Sweave](http://www.R-project.org/doc/Rnews/Rnews_2005-1.pdf) [Garbade, Burgard: Using R/Sweave in Everyday Clinical Practice](http://www.R-project.org/doc/Rnews/Rnews_2006-2.pdf)
-   [Kuhn: Sweave and the Open Document Format The odfWeave Package](http://www.R-project.org/doc/Rnews/Rnews_2006-4.pdf)
-   [Gorjanc: Using Sweave with LyX](http://www.R-project.org/doc/Rnews/Rnews_2008-1.pdf)
-   [Lecoutre: The R2HTML Package](http://www.R-project.org/doc/Rnews/Rnews_2003-3.pdf)

### CRAN packages:

-   [animation](http://cran.rstudio.com/web/packages/animation/index.html)
-   [apaStyle](http://cran.rstudio.com/web/packages/apaStyle/index.html)
-   [apsrtable](http://cran.rstudio.com/web/packages/apsrtable/index.html)
-   [archivist](http://cran.rstudio.com/web/packages/archivist/index.html)
-   [ascii](http://cran.rstudio.com/web/packages/ascii/index.html)
-   [bibtex](http://cran.rstudio.com/web/packages/bibtex/index.html)
-   [brew](http://cran.rstudio.com/web/packages/brew/index.html)
-   [checkpoint](http://cran.rstudio.com/web/packages/checkpoint/index.html)
-   [compareGroups](http://cran.rstudio.com/web/packages/compareGroups/index.html)
-   [connect3](http://cran.rstudio.com/web/packages/connect3/index.html)
-   [DT](http://cran.rstudio.com/web/packages/DT/index.html)
-   [exams](http://cran.rstudio.com/web/packages/exams/index.html)
-   [formatR](http://cran.rstudio.com/web/packages/formatR/index.html)
-   [formattable](http://cran.rstudio.com/web/packages/formattable/index.html)
-   [highlight](http://cran.rstudio.com/web/packages/highlight/index.html)
-   [highr](http://cran.rstudio.com/web/packages/highr/index.html)
-   [Hmisc](http://cran.rstudio.com/web/packages/Hmisc/index.html)
-   [htmlTable](http://cran.rstudio.com/web/packages/htmlTable/index.html)
-   [htmltools](http://cran.rstudio.com/web/packages/htmltools/index.html)
-   [HTMLUtils](http://cran.rstudio.com/web/packages/HTMLUtils/index.html)
-   [humanFormat](http://cran.rstudio.com/web/packages/humanFormat/index.html)
-   [hwriter](http://cran.rstudio.com/web/packages/hwriter/index.html)
-   [Kmisc](http://cran.rstudio.com/web/packages/Kmisc/index.html)
-   [knitcitations](http://cran.rstudio.com/web/packages/knitcitations/index.html)
-   [knitLatex](http://cran.rstudio.com/web/packages/knitLatex/index.html)
-   [knitr](http://cran.rstudio.com/web/packages/knitr/index.html) (core)
-   [latex2exp](http://cran.rstudio.com/web/packages/latex2exp/index.html)
-   [lazyWeave](http://cran.rstudio.com/web/packages/lazyWeave/index.html)
-   [lubridate](http://cran.rstudio.com/web/packages/lubridate/index.html)
-   [markdown](http://cran.rstudio.com/web/packages/markdown/index.html)
-   [memisc](http://cran.rstudio.com/web/packages/memisc/index.html)
-   [miniCRAN](http://cran.rstudio.com/web/packages/miniCRAN/index.html)
-   [NMOF](http://cran.rstudio.com/web/packages/NMOF/index.html)
-   [odfWeave](http://cran.rstudio.com/web/packages/odfWeave/index.html)
-   [odfWeave.survey](http://cran.rstudio.com/web/packages/odfWeave.survey/index.html)
-   [packrat](http://cran.rstudio.com/web/packages/packrat/index.html) (core)
-   [pander](http://cran.rstudio.com/web/packages/pander/index.html)
-   [papeR](http://cran.rstudio.com/web/packages/papeR/index.html)
-   [prettyunits](http://cran.rstudio.com/web/packages/prettyunits/index.html)
-   [quantreg](http://cran.rstudio.com/web/packages/quantreg/index.html)
-   [R.cache](http://cran.rstudio.com/web/packages/R.cache/index.html)
-   [R.rsp](http://cran.rstudio.com/web/packages/R.rsp/index.html)
-   [R2HTML](http://cran.rstudio.com/web/packages/R2HTML/index.html)
-   [r2lh](http://cran.rstudio.com/web/packages/r2lh/index.html)
-   [R2PPT](http://cran.rstudio.com/web/packages/R2PPT/index.html)
-   [R2wd](http://cran.rstudio.com/web/packages/R2wd/index.html)
-   [rapport](http://cran.rstudio.com/web/packages/rapport/index.html)
-   [rbundler](http://cran.rstudio.com/web/packages/rbundler/index.html)
-   [RefManageR](http://cran.rstudio.com/web/packages/RefManageR/index.html)
-   [ReporteRs](http://cran.rstudio.com/web/packages/ReporteRs/index.html)
-   [reporttools](http://cran.rstudio.com/web/packages/reporttools/index.html)
-   [resumer](http://cran.rstudio.com/web/packages/resumer/index.html)
-   [rmarkdown](http://cran.rstudio.com/web/packages/rmarkdown/index.html) (core)
-   [rms](http://cran.rstudio.com/web/packages/rms/index.html)
-   [rprintf](http://cran.rstudio.com/web/packages/rprintf/index.html)
-   [rtf](http://cran.rstudio.com/web/packages/rtf/index.html)
-   [SortableHTMLTables](http://cran.rstudio.com/web/packages/SortableHTMLTables/index.html)
-   [sparktex](http://cran.rstudio.com/web/packages/sparktex/index.html)
-   [stargazer](http://cran.rstudio.com/web/packages/stargazer/index.html)
-   [suRtex](http://cran.rstudio.com/web/packages/suRtex/index.html)
-   [SweaveListingUtils](http://cran.rstudio.com/web/packages/SweaveListingUtils/index.html)
-   [tables](http://cran.rstudio.com/web/packages/tables/index.html)
-   [TeachingSampling](http://cran.rstudio.com/web/packages/TeachingSampling/index.html)
-   [texreg](http://cran.rstudio.com/web/packages/texreg/index.html)
-   [tikzDevice](http://cran.rstudio.com/web/packages/tikzDevice/index.html)
-   [tth](http://cran.rstudio.com/web/packages/tth/index.html)
-   [tufte](http://cran.rstudio.com/web/packages/tufte/index.html)
-   [tufterhandout](http://cran.rstudio.com/web/packages/tufterhandout/index.html)
-   [xtable](http://cran.rstudio.com/web/packages/xtable/index.html)
-   [ztable](http://cran.rstudio.com/web/packages/ztable/index.html)

### Related links:

-   [Reproducible Research TaskView on GitHub](https://github.com/topepo/Reproducible-Research-ctv)

