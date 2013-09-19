#!/bin/sh
mkdir cosc519
cd cosc519
mkdir a b c d e f hex
cat > status.nfo
pwd >> status.nfo
echo "Pass 1:" >> status.nfo
ls -la >> status.nfo
mv a hex/
echo "Pass 2:" >> status.nfo
ls -la >> status.nfo
mv b hex/a/
echo "Pass 3:" >> status.nfo
ls -la >> status.nfo
mv c hex/a/b/
echo "Pass 4:" >> status.nfo
ls -la >> status.nfo
mv d hex/a/b/c/
echo "Pass 5:" >> status.nfo
ls -la >> status.nfo
mv e hex/a/b/c/d/
echo "Pass 6:" >> status.nfo
ls -la >> status.nfo
mv f hex/a/b/c/d/e/
echo "Pass 7:" >> status.nfo
ls -la >> status.nfo
cp status.nfo ../status.log
cd ..
pwd >> status.log
ls -ls >> status.log
./dirdie.sh cosc519/
ls -la >> status.log
echo "DONE"
