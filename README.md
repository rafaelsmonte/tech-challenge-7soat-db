# 7 Soat Infrastructure Databases

This repository contains the IAC to create 7soat project databases using terraform.

3 databases are created:
    - 1 postgresql database for payments service (modules/payments-db). See [payments schema](./docs/payments-schema.png) 
    - 1 postgresql database for products catalog service (modules/products-catalog-db) See [products catalog schema](./docs/products-catalog-schema.png)
    - 1 nosql database table for orders service (modules/orders-db). See [orders schema](./docs/orders-schema.md)

## Database Creation

```
Requirements:
  - Terraform CLI configured in your operating system and propper AWS credencials for terraform from cloud infrastructure
  - Make sure the VPC and public and private subnets are created and their ID's on AWS properly set on terraform env vars (values.tfvars)
```

1. Create payments database
```
terraform apply -var-file values.tfvars -target module.payments-db
```

2. Create products-catalog database
```
terraform apply -var-file values.tfvars -target module.products-catalog-db
```

3. Create orders database
```
terraform apply -var-file values.tfvars -target module.orders-db
```