#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/lfvelez/Documentos/ISPR/HLS/lab1/matrixmul.prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}