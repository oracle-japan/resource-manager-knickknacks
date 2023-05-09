# Resource Manager Knickknack

OCI Tutorials 等で使用する Terraform のサンプルコード集です。

## structure overview

```bash
├── README.md
├── live # 各チュートリアルで使用するTerraformの構成ファイル
│   └── oke-cluster-for-tutorials
│       ├── README.md
│       ├── main.tf
│       ├── outputs.tf
│       ├── provider.tf
│       ├── terraform.tfstate
│       └── variables.tf
└── schema # Resource ManagerのSchema Document
    └── meta_schema.yaml
```

## Coding convention

[Terraform を使用するためのベスト プラクティス](https://cloud.google.com/docs/terraform/best-practices-for-terraform?hl=ja)に従います。
