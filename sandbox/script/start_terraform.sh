cd `dirname $0`

cd ../terraform
docker-compose build
docker-compose run --rm app sh
