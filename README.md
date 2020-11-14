## 事前準備
- Docker、aws-cli

## 使い方
1. sandboxをcpして新しくルート直下にディレクトリを作る、ディレクトリ名はなんでも大丈夫
2. 作成したディレクトリ内に移動して `sh script/setup.sh` を実行
3. `sh script/start_terraform.sh` でterraformを実行できるDocker環境が立ち上がる
4. `aws --endpoint-url http://localhost:4566 s3 ls` みたいな感じでaws-cliを使って実際にリソースが作成されたか確認できる(dockerから抜けた状態で)

terraform内を好きにいじってplan/applyを試せます
※試せるのはlocalstackで用意されてるリソースのみ https://github.com/localstack/localstack#overview
