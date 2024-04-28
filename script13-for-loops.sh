#!/bin/bash

# for n in {1..10}
# do 
#     echo $n
#     sleep 1s

# done 

# echo "This is outside for the loop"


for file in logfiles/*.log
do
    tar -czvf $file.tar.gz $file
    rm logfiles/*.log
done

echo "Tar file is created: $file ..."
