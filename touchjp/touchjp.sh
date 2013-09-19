#!/bin/bash

start=$(date +%s)

curl %1

stop=$(date +%s)

let total_time=stop-start

echo $total_time
