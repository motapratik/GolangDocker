docker build -t golang-web-api .
docker images
docker run -p 8080:8080 -tid golang-web-api