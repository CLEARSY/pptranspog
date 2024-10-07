#!/bin/bash

# Iterate over smt2 files in reference to check that they are valid.

dolmencommand="/opt/dolmen/dolmen-linux-amd64"

references=$(find -name reference -type d)

smt_files_OK=0
smt_files_tot=0
tptp_files_OK=0
tptp_files_tot=0

echo "Checking SMT with dolmen"
for dir in $references; do
    files=$(find $dir -name "*.smt2")
    for file in $files; do
        $dolmencommand --lang=smt2 $file > /dev/null
	    if [[ $? -ne 0 ]]; then
            echo "    NOK: $file may not be correct."
        else
            echo "     OK: $file is correct."
            ((smt_files_OK=smt_files_OK+1))
        fi
        ((smt_files_tot=smt_files_tot+1))
    done
done

echo ""
echo "Checking TPTP references with dolmen..."
for dir in $references; do
    files=$(find $dir -name "*.tptp")
    for file in $files; do
        $dolmencommand --lang=tptp $file > /dev/null
	    if [[ $? -ne 0 ]]; then
            echo "    NOK: $file may not be correct."
        else
            echo "     OK: $file is correct."
            ((tptp_files_OK=tptp_files_OK+1))
        fi
        ((tptp_files_tot=tptp_files_tot+1))
    done
done

echo ""
echo "Summary :"
echo "  SMT:  $smt_files_OK/$smt_files_tot"
echo "  TPTP: $tptp_files_OK/$tptp_files_tot"
