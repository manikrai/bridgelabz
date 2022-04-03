read -p "Enter a string: " text
for ch in {a..z}
do
    var=${text//[^$ch]/}
    echo " ${ch}-${#var} "


done


