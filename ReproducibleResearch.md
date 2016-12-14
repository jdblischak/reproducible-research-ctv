This Task View contains information about R packages that can be used for reproducible research. The base version of R does not ship with many tools for reproducible research Thankfully, there are an increasingly large number of tools contributed by the community, and we aim to list many of them here.

If you have any comments or suggestions for additions or improvements for this Task View, go to GitHub and [submit an issue](https://github.com/topepo/Reproducible-Research-ctv/issues), or make some changes to `ReproducibleResearch.md` and [submit a pull request](https://github.com/topepo/Reproducible-Research-ctv/pulls). Please read our [guide to contributors](https://github.com/topepo/Reproducible-Research-ctv/CONTRIBUTING.md) before making a pull request. If you can't contribute on GitHub, [send an email](mailto:max.kuhn@pfizer.com). If you have an issue with one of the packages discussed below, please contact the maintainer of that package. 

The goal of reproducible research is to tie specific instructions to data analysis and experimental data so that scholarship can be recreated, better understood and verified. Packages in R for this purpose can be split into groups for: literate programming, package reproducibility, code/data formatting tools, format converters, and object caching.


Literate Programming
====================

The primary way that R facilitates reproducible research is using a
document that is a combination of content and data analysis code. The
`Sweave` function (in the base R utils package) and the <pkg>knitr</pkg>
package can be used to blend the subject matter and R code so that a
single document defines the content and the analysis. The
<pkg>brew</pkg> and <pkg>R.rsp</pkg> packages contain alternative
approaches to embedding R code into various markups.

The resources for literate programming are best organized by the
document type/markup language:

LaTeX
-----

Both `Sweave` and <pkg>knitr</pkg> can process LaTeX files.
<pkg>lazyWeave</pkg> can create LaTeX documents from scratch.

Object Conversion Functions:

-   *summary tables/statistics*: <pkg>Hmisc</pkg>, <pkg>NMOF</pkg>,
    <pkg>papeR</pkg>, <pkg>quantreg</pkg>, <pkg>rapport</pkg>,
    <pkg>reporttools</pkg>, <pkg>sparktex</pkg>,
    <pkg>tables</pkg>,<pkg>xtable</pkg>, <pkg>ztable</pkg>
-   *tables/cross-tabulations*: <pkg>compareGroups</pkg>,
    <pkg>Hmisc</pkg>, <pkg>lazyWeave</pkg>, <pkg>knitLatex</pkg>,
    <pkg>knitr</pkg>, <pkg>reporttools</pkg>, <pkg>ztable</pkg>
-   *graphics*: <pkg>animation</pkg>, <pkg>Hmisc</pkg>,
    `grDevices:::pictex`, <pkg>sparktex</pkg>, <pkg>tikzDevice</pkg>
-   *statistical models/methods*: <pkg>apsrtable</pkg>,
    <pkg>memisc</pkg>, <pkg>quantreg</pkg>, <pkg>r2lh</pkg>,
    <pkg>rms</pkg>, <pkg>stargazer</pkg>, <pkg>suRtex</pkg>,
    <pkg>TeachingSampling</pkg>, <pkg>texreg</pkg>, <pkg>xtable</pkg>,
    <pkg>ztable</pkg>
-   *bibtex*: <pkg>bibtex</pkg> and <pkg>RefManageR</pkg>
-   *others*: <pkg>latex2exp</pkg> converts LaTeX equations to
    `plotmath` expressions.
    
Miscellaneous Tools

-   <pkg>Hmisc</pkg> contains a function to correctly escape
    special characters. <pkg>resumer</pkg> creates resumes. Standardized
    exams can be created using the <pkg>exams</pkg> package.

HTML
----

The <pkg>knitr</pkg> package can process HTML files directly. `Sweave`
can also work with HTML by way of the <pkg>R2HTML</pkg> package.
<pkg>Kmisc</pkg> and <pkg>lazyWeave</pkg> can create HTML format
documents from scratch.

Object Conversion Functions:

-   *summary tables/statistics*: <pkg>stargazer</pkg>
-   *tables/cross-tabulations*: <pkg>compareGroups</pkg>, <pkg>DT</pkg>,
    <pkg>formattable</pkg>, <pkg>htmlTable</pkg>, <pkg>HTMLUtils</pkg>,
    <pkg>hwriter</pkg>, <pkg>Kmisc</pkg>, <pkg>knitr</pkg>,
    <pkg>lazyWeave</pkg>, <pkg>SortableHTMLTables</pkg>,
    <pkg>texreg</pkg>, <pkg>ztable</pkg>
-   *statistical models/methods*: <pkg>r2lh</pkg>, <pkg>rapport</pkg>,
    <pkg>stargazer</pkg>, <pkg>xtable</pkg>
-   *others*: <pkg>knitcitations</pkg>, <pkg>RefManageR</pkg>

Miscellaneous Tools: <pkg>htmltools</pkg> has various tools for working
with HTML. <pkg>tufterhandout</pkg> and <pkg>tufte</pkg> provide templates for creating Tufte-style handouts

Markdown
--------

The <pkg>knitr</pkg> package can process markdown files without assistance into HTML, Microsoft Word, and PDF files. The packages <pkg>markdown</pkg> and <pkg>rmarkdown</pkg> have general tools for working with documents in markdown. <pkg>Kmisc</pkg> and <pkg>lazyWeave</pkg> can create markdown format documents from scratch. Also, the <pkg>ascii</pkg> package can write R objects to the [AsciiDoc](http://www.methods.co.nz/asciidoc/) format.


Object Conversion Functions:

-   *summary tables/statistics*: <pkg>papeR</pkg>
-   *tables/cross-tabulations*: <pkg>DT</pkg>, <pkg>formattable</pkg>,
    <pkg>htmlTable</pkg>, <pkg>knitr</pkg>, <pkg>Kmisc</pkg>,
    <pkg>lazyWeave</pkg>, <pkg>papeR</pkg>
-   *statistical models/methods*: <pkg>pander</pkg>, <pkg>papeR</pkg>,
    <pkg>rapport</pkg>, <pkg>texreg</pkg>
-   *others*: <pkg>RefManageR</pkg>

OpenDocument Format (ODF)
-------------------------

The <pkg>odfWeave</pkg> package can process ODF files.

Object Conversion Functions:

-   *tables/cross-tabulations*: <pkg>odfWeave</pkg>
-   *statistical models/methods*: <pkg>odfWeave.survey</pkg>,
    <pkg>rapport</pkg>

Microsoft Formats
-----------------

The <pkg>ReporteRs</pkg> (formerly R2DOCX) package can create `docx` and
`pptx` files. <pkg>R2wd</pkg> (windows only) can also create Word
documents from scratch and <pkg>R2PPT</pkg> (also windows only) can
create PowerPoint slides. The <pkg>rtf</pkg> package does the same for
Rich Text Format documents.

Object Conversion Functions:

-   *tables/cross-tabulations*: <pkg>apaStyle</pkg>


Miscellaneous Tools
===================

Package Reproducibility
-----------------------

R also has tools for ensuring that specific packages versions can be required for analyses. <pkg>packrat</pkg>, <pkg>checkpoint</pkg>, <pkg>rbundler</pkg> install packages required for a project to a local archive as they existed at a specified point in time. This allows specific package versions to be maintained over time and different users. <pkg>miniCRAN</pkg> facilitates the creation of local CRAN-like repositories.

Formatting Tools
----------------

<pkg>formatR</pkg>, <pkg>highlight</pkg>, <pkg>highr</pkg>, and
<pkg>SweaveListingUtils</pkg> can be used to color and/or format R code.

Packages <pkg>humanFormat</pkg>, <pkg>lubridate</pkg>,
<pkg>prettyunits</pkg>, and <pkg>rprintf</pkg> have functions to better
format data.

Format Convertors
-----------------

<pkg>pander</pkg> can be used for rendering R objects into
[Pandoc's](http://pandoc.org/) markdown. <pkg>knitr</pkg> has the
function `pandoc` that can call an installed version of
[Pandoc](http://pandoc.org/) to convert documents between formats such
as Markdown, HTML, LaTeX, PDF and Word. <pkg>tth</pkg> facilitates TeX
to HTML/MathML conversions. LaTeX to Rich Text Format conversions can be
done using the <pkg>connect3</pkg> package.

Object Caching Packages
-----------------------

When using `Sweave` and <pkg>knitr</pkg> it can be advantageous to
*cache* the results of time consuming code chunks if the document will
be re-processed (i.e. during debugging). <pkg>knitr</pkg> facilitates
object caching and the Bioconductor package <bioc>weaver</bioc> can be
used with `Sweave`.

Non-literate programming packages to facilitating caching/archiving are
<pkg>R.cache</pkg> and <pkg>archivist</pkg>.

# Related links

-  [The Sweave Homepage](http://www.statistik.uni-muenchen.de/~leisch/Sweave/) 
-  [knitr: Elegant, flexible and fast dynamic report generation with R](http://yihui.name/knitr/) 
-  <bioc>weaver</bioc> 
-  [Wikipedia: Literate Programming](http://en.wikipedia.org/wiki/Literate_Programming)
-  [Harrell: Site for Reproducible Research](http://biostat.mc.vanderbilt.edu/wiki/Main/StatReport)
-  [Koenker, Zeileis: On Reproducible Econometric Research](http://www.econ.uiuc.edu/~roger/research/repro/) 
-  [Peng: Reproducible Research and Biostatistics](http://biostatistics.oxfordjournals.org/cgi/reprint/10/3/405)
-  [Rossini, Leisch: Literate Statistical Practice](http://www.bepress.com/uwbiostat/paper194/) 
-  [Baggerly, Coombes: Deriving Chemosensitivity from Cell Lines: Forensic Bioinformatics and Reproducible Research in High-Throughput Biology](http://dx.doi.org/10.1214/09-AOAS291) 
-  [Leisch: Sweave, Part I: Mixing R and LaTeX](http://www.R-project.org/doc/Rnews/Rnews_2002-3.pdf)
-  [Leisch: Sweave, Part II: Package Vignettes](http://www.R-project.org/doc/Rnews/Rnews_2003-2.pdf)
-  [Betebenner: Using Control Structures with Sweave](http://www.R-project.org/doc/Rnews/Rnews_2005-1.pdf) [Garbade, Burgard: Using R/Sweave in Everyday Clinical Practice](http://www.R-project.org/doc/Rnews/Rnews_2006-2.pdf) 
-  [Kuhn: Sweave and the Open Document Format The odfWeave Package](http://www.R-project.org/doc/Rnews/Rnews_2006-4.pdf) 
-  [Gorjanc: Using Sweave with LyX](http://www.R-project.org/doc/Rnews/Rnews_2008-1.pdf) 
-  [Lecoutre: The R2HTML Package](http://www.R-project.org/doc/Rnews/Rnews_2003-3.pdf)

