#!/bin/bash

tar -cvzf demo.tgz demo

if [ $? -eq 0 ];then
echo "Successfully created tar :'demo.tgz'"
else
echo "Failed to create tar"
fi

