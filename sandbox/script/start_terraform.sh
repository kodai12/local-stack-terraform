cd `dirname $0`

cd ../terraform
# docker-compose build
docker-compose run --service-ports --rm app sh
