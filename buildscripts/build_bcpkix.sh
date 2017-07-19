#!/bin/sh
. ./buildenv.sh

library=`find ~/.m2 -name "bcpkix*.jar"`
outfile="$outdir/bcpkix.dll"

echo building $outfile from $library 
rm "$outfile"
"$ikvmc_bin" -reference:"$ikvm_dir/IKVM.OpenJDK.Core.dll" -reference:"$outdir/hamcrest-core.dll" -reference:"$outdir/junit.dll" -reference:"$outdir/bcprov.dll" -target:library -compressresources -out:$outfile $library
