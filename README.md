# IaC using Terraform

All my projects' infrastructure is built using Terraform via 
Terraform CLI and Terraform Cloud.

The project structure is as follows:

```
terraform
├─ gcp-projects
│  ├─ modules
│  └─ my-projects
│     ├─ .terraform.lock.hcl
│     ├─ config.tf
│     ├─ main.tf
│     └─ variables.tf
└─ README.md
```

## Requirements

```
terraform
```


## `Init`

To initiate, just run:

```
terraform login
```

* Log in to the Terraform Cloud account

Then, run:

```
terraform init
```