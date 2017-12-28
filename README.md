# docker-casperjs
docker-casperjs

wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2
wget https://github.com/casperjs/casperjs/tarball/1.1.0

docker build -t="casperjs:v1.0.1" .

docker run -t -i casperjs:v1.0.1 casperjs
