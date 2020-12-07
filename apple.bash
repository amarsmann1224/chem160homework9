#!/bin/bash
for year in stock_data; do
    cd $year
	cd $1
	if ls * >/dev/null 2>&1 ; then
	    for file in *; do
		echo -n $file "  "
		grep aapl $file | awk '{print $2}'
	    done
	fi
	cd ..
    done
    cd ..
done
	
