read DIR
for file in $DIR/*.rb
do 
    echo "operating with $file"
    reek $file
done 
echo "completed"