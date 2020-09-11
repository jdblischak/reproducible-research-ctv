#!/usr/bin/env Rscript

# Maintenance script to check CTV packages, URLs, and formatting.

library(ctv)
library(RCurl)
library(XML)

ctvFile <- "ReproducibleResearch.ctv"
stopifnot(file.exists(ctvFile))
htmlFile <- "ReproducibleResearch.html"

message("Checking packages...")
packages <- check_ctv_packages(ctvFile)
stopifnot(lengths(packages) == 0)

message("Checking URLs...")
xml <- xmlParse(ctvFile)
urls = xpathSApply(xml, "//a[@href]", xmlGetAttr, "href")
stopifnot(url.exists(urls))

message("Checking date...")
today <- Sys.Date()
timezone <- Sys.timezone()
versionNode <- getNodeSet(xml, "//version")
versionValue <- xmlValue(versionNode)
version <- as.Date(versionValue)
if (version != today)
  warning(
    "\n",
    sprintf("It is %s in the timezone %s\n", today, timezone),
    sprintf("The version in ctv is %s\n", version),
    "Don't forget to update the version\n",
    immediate. = TRUE
  )

message("Building HTML and opening for viewing")
ctv2html(ctvFile, file = htmlFile)
browseURL(htmlFile)
