cd `dirname $0`

cd ../
GOOS=linux GOARCH=amd64 go build -o hello
zip lambda.zip hello

cd localstack
docker-compose -f docker-compose.yml up -d localstack