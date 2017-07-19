#!/bin/sh
. ./buildenv.sh

library=`find ~/.m2 -name "levigo-jbig2-imageio-1-*.jar"`
outfile="$outdir/levigo-jbig2-imageio.dll"

echo building $outfile from $library 
rm "$outfile"
"$ikvmc_bin" -reference:"$ikvm_dir/IKVM.OpenJDK.Core.dll" -target:library -compressresources -out:$outfile $library
