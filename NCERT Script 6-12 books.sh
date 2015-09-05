#!bin/bash

#script to download from ncert books 6 to 12.
var=6;
x=11;

for i in f g h i j k l;
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
