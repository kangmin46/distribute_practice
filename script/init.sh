sudo su
snap install docker
git clone -b https://github.com/kangmin46/dp.git
cd dp
docker build -t Hello .
