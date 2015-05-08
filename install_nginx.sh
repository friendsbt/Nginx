cd nglib
find . -name '*.gz' -exec gunzip {} +
ls *.tar | xargs -i tar xf {}
cp ../src/configure-nginx.sh nginx-1.6.2
cd nginx-1.6.2
sudo apt-get install libpcre3 libpcre3-dev
sudo chmod u+x configure-nginx.sh
./configure-nginx.sh
sudo make && sudo make install