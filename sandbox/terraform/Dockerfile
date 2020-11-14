FROM alpine/terragrunt:0.13.5

RUN apk add --no-cache curl \
  python3 \
  jq

WORKDIR /usr/src/app

COPY . .
