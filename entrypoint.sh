#!/bin/bash
cd /build/masterserver
make

# delete the compiled plugins that we don't want to run:
rm -f plugins/libef*

x=1
y=5
while [ $x -le $y ]; do
  echo "Starting $x/$y times"
  x=$(( $x + 1 ))
  ./masterserver -p ./plugins
  echo The masterserver stopped. 
  sleep 1
done
echo giving up.
