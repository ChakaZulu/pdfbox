#!/bin/sh
. ./buildenv.sh

library=`find ~/.m2 -name "junit-3.8.1.jar"`
outfile="$outdir/junit.dll"

echo building $outfile from $library
rm "$outfile"
"$ikvmc_bin" -reference:"$ikvm_dir/IKVM.OpenJDK.Core.dll" -reference:"$outdir/hamcrest-core.dll" -target:library -compressresources -out:$outfile $library
