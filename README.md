## 事前準備
- Docker、aws-cli

## 使い方
1. sandboxをcpして新しくルート直下にディレクトリを作る、ディレクトリ名はなんでも大丈夫
2. 作成したディレクトリ内に移動して `sh script/setup.sh` を実行
3. terraformディレクトリ内に移動し, terraform plan/applyをしてローカルにリソースを作成する
4. `aws --endpoint-url http://localhost:4566 s3 ls` みたいな感じでaws-cliを使って実際にリソースが作成されたか確認できる

terraform内を好きにいじってplan/applyを試せます
※試せるのはlocalstackで用意されてるリソースのみ https://github.com/localstack/localstack#overview