#!/bin/bash
currdir=`dirname "$0"`
cd "$currdir"

. ./buildenv.sh

mkdir "$outdir"

./build_hamcrestcore.sh
./build_junit.sh
./build_bcprov.sh
./build_bcpkix.sh
./build_bcmail.sh
./build_icu4j.sh
./build_commonslogging.sh
./build_fontbox.sh
./build_pdfbox.sh


