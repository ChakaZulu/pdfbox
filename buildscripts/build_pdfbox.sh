#!/bin/sh
. ./buildenv.sh

library=`find ~/pdfbox/pdfbox/target -name "pdfbox-*SNAPSHOT.jar"`
outfile="$outdir/pdfbox.dll"

echo building $outfile from $library 
rm "$outfile"
"$ikvmc_bin" -reference:"$ikvm_dir/IKVM.OpenJDK.Core.dll" -reference:"$ikvm_dir/IKVM.AWT.WinForms.dll"  -reference:"$outdir/hamcrest-core.dll" -reference:"$outdir/junit.dll" -reference:"$outdir/bcprov.dll" -reference:"$outdir/bcpkix.dll" -reference:"$outdir/bcmail.dll" -reference:"$outdir/commons-logging.dll" -reference:"$outdir/fontbox.dll" -target:library -compressresources -out:$outfile $library
