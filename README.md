# terraform

## tflint

``` sh
tflint --init
```

uses .tflint.hcl

uses tflint.tf to trigger lint recommendations

## checkov

``` sh
checkov -d ./checkov/
```

uses checkov folder to show compliant and non-compliant tf

toggle [true:false]

```terraform
variable "checkov_toggle" {
  default = "true"
  type    = string
}
```

> https://www.checkov.io/2.Basics/CLI%20Command%20Reference.html

