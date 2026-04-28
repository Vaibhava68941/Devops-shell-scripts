#!/bin/bash

process_name="mysqld"
max_memory=1000000  #1MB

for pid in $(pgrep "$process_name"); do
 mem_usage=$(ps -p "$pid" -o rss=)   


if [ "$mem_usage" -gt "$max_memory" ]; then
        kill "$pid"
echo "Process $process_name killed due to high memory usage."
  fi
done

