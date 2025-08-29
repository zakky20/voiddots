#!/usr/bin/env bash

time2="2/27/2026 8:00AM"
let current=$(date +%s)
timestamp2=$(date -d "$time2" +%s)
time_difference=$((timestamp2 - current))
days_difference=$((time_difference / 86400))

echo $days_difference days left
