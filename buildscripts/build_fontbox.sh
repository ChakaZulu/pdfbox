#!/bin/sh
. ./buildenv.sh

library=`find ~/pdfbox/fontbox/target -name "fontbox-*SNAPSHOT.jar"`
outfile="$outdir/fontbox.dll"

echo building $outfile from $library 
rm "$outfile"
"$ikvmc_bin" -reference:"$ikvm_dir/IKVM.OpenJDK.Core.dll" -reference:"$outdir/hamcrest-core.dll" -reference:"$outdir/junit.dll" -reference:"$outdir/bcprov.dll" -reference:"$outdir/bcpkix.dll" -reference:"$outdir/bcmail.dll" -reference:"$outdir/commons-logging.dll" -target:library -compressresources -out:$outfile $library
