#!/bin/sh
. ./buildenv.sh

library=`find ~/.m2 -name "commons-logging-1.2.jar"`
outfile="$outdir/commons-logging.dll"

echo building $outfile from $library 
rm "$outfile"
"$ikvmc_bin" -reference:"$ikvm_dir/IKVM.OpenJDK.Core.dll" -reference:"$outdir/hamcrest-core.dll" -reference:"$outdir/junit.dll" -reference:"$outdir/bcprov.dll" -reference:"$outdir/bcpkix.dll" -reference:"$outdir/bcmail.dll" -target:library -compressresources -out:$outfile $library
