#!bin/bash

#script to download from ncert books 1 to 5.

var=1;
x=4;

for i in a b c d e;
  do
  mkdir $var;
  cd "$var";
  var=$((var+1));
  for j in mh ss sc ep ph ac bo hs gy py sy ch ec bs hc gd ct fa;
    do
    if [ "$var" -lt "$x" ]; 
      then if [ "$j" = "ph" ] 
            then 
             break; 
           fi 
    fi
    mkdir $j; cd "$j";
    for k in 1 2 3 4 5;
      do
      sleep 2;
      url="http://www.ncert.nic.in/ncerts/l/${i}e${j}${k}dd.zip";
          wget $url;
    done
    find -name "*.zip" -size -800 -delete
    cd ..;
  done
  cd ..;
done
