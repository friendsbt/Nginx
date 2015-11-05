sudo apt-get update
cd nglib
find . -name '*.gz' -exec gunzip {} +
ls *.tar | xargs -i tar xf {}
cp ../src/configure-nginx.sh nginx-1.9.6
cd nginx-1.9.6
sudo apt-get install libxml2-dev libxslt1-dev python-dev
sudo apt-get install libpcre3 libpcre3-dev zlib1g zlib1g.dev
sudo apt-get install libgd2-xpm-dev
sudo apt-get install libperl-dev
sudo apt-get install geoip-database libgeoip-dev
sudo chmod u+x configure-nginx.sh
./configure-nginx.sh
sudo make && sudo make install
