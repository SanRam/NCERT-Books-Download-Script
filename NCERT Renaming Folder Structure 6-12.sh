#!bin/bash

#script to rename  files ncert books 6 to 12.
var=0;
x=10;
Unix=("Debian" "as");
declare -a Names=("Mathematics" "Social_Studies" 'Science' 'Extended_problems' 'Physics' 'Accounts' 'Biology' 'History' 'Geology' 'Psychology' 'Sociology' 'Chemistry' 'Economics' 'Business_Studies' 'Heritage_Craft' 'Graphic_Design' 'Computer_Tech' 'Fine_Arts');

for i in { 6..12 };
  do
  mv ${i} Class${i};
  cd "class${i}";
  for j in mh ss sc ep ph ac bo hs gy py sy ch ec bs hc gd ct fa;
    do
    if [ "$i" -le "$x" ]; 
      then if [ "$j" = "ph" ] 
            then 
             break; 
           fi 
    fi
    mv $j ${names[var]}; 
    var=$((var+1));
  done
  var=0;
  cd ..;
done
