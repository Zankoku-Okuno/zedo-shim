#!/bin/bash
set -e

# More excercise of odd request paths and do-script arguments.

rm -rf project/build
cd project/subdir

zedo \
    build:foo1.out :foo2.out :src:foo3.out ::foo4.out foo5.out bar/../foo6.out \
    .foo7.out ..foo8.out foo.ne..in.out 'foo 10.out' \
    subdir/subsubdir/downtwo.out

cd ../build
cat foo1.out
cat foo2.out
cat src:foo3.out
cat :foo4.out
cat foo5.out
cat foo6.out
cat .foo7.out
cat ..foo8.out
cat foo.ne..in.out
cat 'foo 10.out'
cat subdir/subsubdir/downtwo.out
