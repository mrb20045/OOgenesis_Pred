#!/bin/bash

dir=$(echo "${0%/*}")

cd $dir/Scripts/libsvm-3.21


echo
echo "___________________"
echo "libSVM compilling"
echo "___________________"
echo
make
echo

echo "___________________"
echo "protr installing"
echo "___________________"
echo
Rscript $dir/Scripts/protr.R  $dir/Scripts/protr_1.1-1.tar.gz

chmod 777 $dir/OOgenesis_Pred
chmod 777 -R  $dir/Scripts

echo