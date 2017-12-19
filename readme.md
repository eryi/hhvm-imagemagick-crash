docker build -t hhvm-imagemagick-crash .  
docker run -d -p 12345:80 hhvm-imagemagick-crash  
curl -vvvv http://localhost:12345  
