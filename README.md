# AnsibleTerraformServerspec

## 概要

- terraformでリソースデプロイ
- ダイナミックインベントリでインベントリを取得
- serverspecでテスト実行

## デプロイ準備

- WSLでUbuntu18.04を選択
- WSLにTerraformをインストール
- WSLで以下のコマンドを実行

```bash
apt update
apt upgrade
apt install python3-pip
pip3 install -r requirements.txt
aws configure
apt install ruby ruby-dev
gem install ansible_spec
```

## デプロイ

```bash
ansible-playbook -i inventories site.yml
```

## リソース削除

```bash
ansible-playbook -i inventories destroy.yml
```

## テスト実行

```bash
rake all
```
# AnsibleTerraformZabbix
