for files in `ls *.java` `ls *.py` `ls *.js`
do 
  folderName=`echo $files | awk -F. '{print $1}'`
  folderName2=`echo $files | awk -F. '{print $2}'`
      mkdir -p $folderName/$folderName2 
      mv $files $folderName/$folderName2
done
