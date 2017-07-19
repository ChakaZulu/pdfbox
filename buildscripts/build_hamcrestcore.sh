#!/bin/sh
. ./buildenv.sh

library=`find ~/.m2 -name "hamcrest-core*.jar"`
outfile="$outdir/hamcrest-core.dll"

echo building $outfile from $library 
rm "$outfile"
"$ikvmc_bin" -reference:"$ikvm_dir/IKVM.OpenJDK.Core.dll" -target:library -compressresources -out:$outfile $library
