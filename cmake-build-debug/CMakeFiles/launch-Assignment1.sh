#!/bin/sh
bindir=$(pwd)
cd /Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1/cmake-build-debug/Assignment1 
	else
		"/Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1/cmake-build-debug/Assignment1"  
	fi
else
	"/Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1/cmake-build-debug/Assignment1"  
fi
