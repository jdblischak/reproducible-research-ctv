Thanks for your contribution!

## Edit the task view:

### Requirements:

* R
* `make`
* [`pandoc`](http://johnmacfarlane.net/pandoc/installing.html)
* OSX users will need gnu-sed, see `known issues` below for more details. 

If you don't want to or can't install these things, then just edit the `ReproducibleResearch.md` file, and submit a pull request.

### Steps

1. Fork this repo
2. Edit the [ReproducibleResearch.md](https://github.com/topepo/Reproducible-Research-ctv/ReproducibleResearch.md) file. If the package you are adding is on CRAN, add a the package name within `<pkg></pkg>` tags (use `<ohat></ohat>` for OmegaHat packages, `<rforge></rforge>` for [RForge](https://r-forge.r-project.org/), and `<bioc></bioc>` for [Bioconductor](http://www.bioconductor.org/) packages). If it's not on CRAN, put it markdown link syntax: `[display-text](url)` (e.g., `[rgbif](https://github.com/ropensci/rgbif) (not on CRAN)`). If there is a non-CRAN source repository available, add it as a link in parentheses after the package name (e.g., `<pkg>rgbif</pkg> ([GitHub](https://github.com/ropensci/rgbif))`). Note that GitHub is written in camel case.
3. On the command line type `make` and press enter, which creates the `ReproducibleResearch.ctv`, `ReproducibleResearch.html`, and `README.md` files.
4. Check to make sure the `.ctv` file is correct. In the console output from `make check`, you should get:

    ```coffee
    $`Packages in <info> but not in <packagelist>`
    character(0)

    $`Packages in <packagelist> but not in <info>`
    character(0)

    $`Packages in <packagelist> but not in repos`
    character(0)
    ```

    If you don't, follow the error messages to fix. If you can't figure out how to fix, just send the PR anyway, and the maintainer will fix.

    If you changed anything in the `ReproducibleResearch.md` file, repeat step 3 to remake files. If everything was fine, proceed.
5. Push back up to your account, then send a pull request to `topepo/Reproducible-Research-ctv`

## Submit an issue

If you just want to submit an issue, then go to the [issues page](https://github.com/topepo/Reproducible-Research-ctv/ReproducibleResearch.md/issues?state=open) and do that. Please list as much of the following as possible: package name, repository, development URL, description/details.

## Known issues

On OSX you may need to instal GNU sed with `brew install gnu-sed --default-names`. This is because we use `sed` functions for linux, and the OSX `sed` comes from BSD, which is subtly different. 

## Acknowledgements

This workflow for managing a CTV is taken directly from https://github.com/ropensci/webservices. Thanks to [Thomas Leeper](https://github.com/leeper) and the others working on that for making the scripts available, and documenting the process so well. It was adapted to the Reproducible Research CTV by [Ben Marwick](https://github.com/benmarwick). 

