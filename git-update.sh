#!/bin/sh
message=${@:-updated}
dir=$(dirname $0)
(
  cd $dir
  git add .
  git commit -am "$message"
  git push
)
