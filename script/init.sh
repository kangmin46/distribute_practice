sudo snap install docker --devmode
sudo git clone -b build https://github.com/kangmin46/dp.git
cd dp
sudo docker build -t hello .
sudo docker run -itd -p 8080:8080 --name kangmin hello


