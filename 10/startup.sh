cd armstrong
bundle install 
yarn install 
echo 'completed for api app'
cd ..

cd xml_processor 
bundle install 
yarn install 
echo 'completed for client app'
cd ..

cd ./xml_processor && /usr/local/bin/rails s -p 3001 & cd ./armstrong && /usr/local/bin/rails s & echo 'open localhost:3000 to test the lab'


