cd ~
git clone https://laike9m@bitbucket.org/laike9m/fbtconf.git
cd fbtconf
cp .bash_profile ~
sudo cp nginx_web.conf /usr/local/nginx/conf/nginx.conf
sudo cp nginx_cache.conf /usr/local/nginx/conf
sudo cp nginx_common_proxy.conf /usr/local/nginx/conf
source ~/.bash_profile

sudo nginx
