#!/bin/bash

# Pull changes from ctv SVN repo on R-Forge

echo "Cloning the R-Forge SVN repo to /tmp/ctv/"
svn checkout \
  --quiet \
  --non-interactive \
  svn://svn.r-forge.r-project.org/svnroot/ctv/ \
  /tmp/ctv/

revHead=`svn log -l 1 /tmp/ctv/ --quiet | head -n 2 | tail -n 1 | cut -f1 -d'|' | tr -d '[:space:]'`
echo "HEAD at revision $revHead"
revRr=`svn log -l 1 /tmp/ctv/pkg/inst/ctv/ReproducibleResearch.ctv --quiet | head -n 2 | tail -n 1 | cut -f1 -d'|' | tr -d '[:space:]'`
echo "ReproducibleResearch.ctv last revised in revision $revRr"

cp /tmp/ctv/pkg/inst/ctv/ReproducibleResearch.ctv .
git diff --quiet --exit-code ReproducibleResearch.ctv
if [ $? -eq 1 ]
then
  echo "Committing changes to ReproducibleResearch.ctv"
  git add ReproducibleResearch.ctv
  git commit -m "Sync with R-Forge $revRr https://r-forge.r-project.org/scm/viewvc.php?view=rev&root=ctv&revision=${revRr#r}"
fi
