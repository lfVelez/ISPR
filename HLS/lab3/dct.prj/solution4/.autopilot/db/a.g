#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/lfvelez/Documentos/ISPR/HLS/labsource/labs/lab3/dct.prj/solution4/.autopilot/db/a.g.bc ${1+"$@"}
