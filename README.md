# Resource Manager Knickknack

OCI Tutorials 等で使用する Terraform のサンプルコード集です。

## structure overview

```bash
.
├── .github # GitHub 用ファイル（GitHub Actions, Issue Template, etc.）
│   ├── ISSUE_TEMPLATE
│   └── workflows
├── examples # プロビジョニングする環境単位にディレクトリを作成する
│   ├── oke-cluster-for-tutorials
│   └── ...
└── zips # CI によって生成される zip ファイルの格納場所
    ├── oke-cluster-for-tutorials.zip
    └── ...
```

## how to develop

`./examples` 配下にプロビジョニングしたい環境単位にディレクトリを作成します。

```bash
mkdir ./examples/some-env
```

`./template` 配下に含まれているファイル群をコピーします。

```bash
 cp template/* ./examples/some-env/
```

（任意）provider のインストールを行います。（VSCode 等で拡張機能を使っている場合は、これによってリソース等の補完が効くようになります）

```bash
cd ./examples/some-env/
terraform init
```

（任意）手元の VM 等で動作させたい場合は、[Terraform: OCI Terraform の設定](https://docs.oracle.com/ja-jp/iaas/developer-tutorials/tutorials/tf-provider/01-summary.htm) を参考にセットアップしてください。

## Coding convention

[Terraform を使用するためのベスト プラクティス](https://cloud.google.com/docs/terraform/best-practices-for-terraform?hl=ja)に従います。
