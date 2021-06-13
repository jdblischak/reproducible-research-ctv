# Guide for maintainers

## Check script

Prior to committing/pushing changes, run [`check.R`](./check.R). It checks for
any issues with the list of packages, the URLs, and the date. It also converts
the CTV file to HTML and attempts to open it in your browser.

```sh
Rscript check.R
```

## Check for changes in SVN repository

The official copy of the task view is maintained in the SVN repository of the R
package ctv. The path to the file is `pkg/inst/ctv/ReproducibleResearch.ctv`.
The maintainer of this package, Achim Zeileis, will edit the task view to remove
packages that are archived on CRAN. Thus you always want to merge these changes
before making your own updates here in this GitHub repository. Here are useful
links:

* [Browse ctv repo from root of the project](https://r-forge.r-project.org/scm/viewvc.php/?root=ctv)
* [View the current version of ReproducibleResearch.ctv](https://r-forge.r-project.org/scm/viewvc.php/pkg/inst/ctv/ReproducibleResearch.ctv?view=markup&root=ctv)
* [View the commit log for ReproducibleResearch.ctv](https://r-forge.r-project.org/scm/viewvc.php/pkg/inst/ctv/ReproducibleResearch.ctv?root=ctv&view=log)
* [View a diff between 2 different revisions](https://r-forge.r-project.org/scm/viewvc.php/pkg/inst/ctv/ReproducibleResearch.ctv?root=ctv&r1=2361&r2=3168)
(change the values of r1 and r2 to point to the desired revisions)

Also note that Achim aggressively removes packages that were archived on CRAN.
You'll want to check to see if the authors of the archived package were able to
fix the issues in the meantime.

You can automatically sync any changes made in the SVN repo to the Git repo by
running `bash pull-from-svn.sh`.

## Using SVN

If you are new to SVN, check out the chapter [Basic Work
Cycle][basic-work-cycle] of the book [Version Control with Subversion][svnbook].

[basic-work-cycle]: http://svnbook.red-bean.com/en/1.7/svn.tour.cycle.html
[svnbook]: http://svnbook.red-bean.com/

**Common commands:**

* Clone the repo as an unauthenticated user. Useful for exploration b/c don't
  have to enter password for authentication with the server.

  ```sh
  svn checkout svn://svn.r-forge.r-project.org/svnroot/ctv/
  ```

* See the past revisions. Annoyingly this requires accessing the server, so best
  to do this unauthenticated to avoid having to enter your password. By default
  it prints everything, so you need to manually pipe it to `less`. `-l` limits
  the number of revisions. `-v` includes the files that were changed in the
  revision. `-r` shows a specific revision.

  ```sh
  svn log
  svn log | less
  cd pkg/
  svn log inst/ctv/ReproducibleResearch.ctv
  svn log inst/ctv/ReproducibleResearch.ctv | less
  svn log -l 10 inst/ctv/ReproducibleResearch.ctv
  svn log -v -r r3168
  ```

* Authenticated checkout. Requires password for initial checkout and also any
  subsequent call to the server. Replace `<username>` with your R-Forge
  username.

  ```sh
  svn checkout svn+ssh://<username>@svn.r-forge.r-project.org/svnroot/ctv/
  ```

* View a diff. The default is changes to the working copies. Specifying a
  revision with `-r` will show all the changes since that revision. It's also
  possible to specify two revisions separated by a colon. You only have to enter
  your password when specifying a past revision with `-r`.

  ```sh
  svn diff
  cd pkg/inst/ctv/
  svn diff -r r3168 ReproducibleResearch.ctv
  svn diff -r r2361:r3168 ReproducibleResearch.ctv
  ```

* Pull down the latest changes.

  ```sh
  svn update
  ```

* See the current status of the local files.

  ```sh
  svn status
  ```

* Commit both saves a revision and sends the change back to the central server
  at the same time.

  ```sh
  svn commit -m "Update ReproducibleResearch.ctv (Git xxxxxxx)"
  ```
