#!/bin/bash

echo "Today is " `date`

echo "Enter the path to the directory"
read the_path

echo "Your path has following files and folders"
ls $the_path
