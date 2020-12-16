<!-- 














  ** DO NOT EDIT THIS FILE
  ** 
  ** This file was automatically generated by the `build-harness`. 
  ** 1) Make all changes to `README.yaml` 
  ** 2) Run `make init` (you only need to do this once)
  ** 3) Run`make readme` to rebuild this file. 
  **
  ** (We maintain HUNDREDS of open source projects. This is how we maintain our sanity.)
  **















  -->

#

[![README Header][logo]][website]

# tf-mod-aws-backup

## Module description


Terraform module to provision [AWS Backup](https://aws.amazon.com/backup), a fully managed backup service that makes it easy to centralize and automate
the back up of data across AWS services such as Amazon EBS volumes, Amazon EC2 instances, Amazon RDS databases, Amazon DynamoDB tables,
Amazon EFS file systems, and AWS Storage Gateway volumes.




Project: **[%!s(<nil>)](%!s(<nil>))** : [[%!s(<nil>)](%!s(<nil>))] | [[%!s(<nil>)](%!s(<nil>))] 







## Usage

**IMPORTANT:** The `master` branch is used in `source` just as an example. In your code, do not pin to `master` because there may be breaking changes between releases.
Instead pin to the release tag (e.g. `?ref=tags/x.y.z`) of one of our [latest releases](https://github.com/https://github.com/humnai/backup/releases).


The below values shown in the usage of this module are purely representative, please replace desired values as required.

TO-DO

```hcl
```





## Examples
Simple and advanced examples of this project.

### Advanced Example 1:

TO-DO

  ```hcl
  ```


## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.0 >= 2.7.0 >= 2.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| backup\_resources | An array of strings that either contain Amazon Resource Names (ARNs) or match patterns of resources to assign to a backup plan | `list(string)` | n/a | yes |
| cold\_storage\_after | Specifies the number of days after creation that a recovery point is moved to cold storage | `number` | n/a | yes |
| completion\_window | The amount of time AWS Backup attempts a backup before canceling the job and returning an error. Must be at least 60 minutes greater than `start_window` | `number` | n/a | yes |
| copy\_action\_cold\_storage\_after | For copy operation, specifies the number of days after creation that a recovery point is moved to cold storage | `number` | n/a | yes |
| copy\_action\_delete\_after | For copy operation, specifies the number of days after creation that a recovery point is deleted. Must be 90 days greater than `copy_action_cold_storage_after` | `number` | n/a | yes |
| delete\_after | Specifies the number of days after creation that a recovery point is deleted. Must be 90 days greater than `cold_storage_after` | `number` | n/a | yes |
| destination\_vault\_arn | An Amazon Resource Name (ARN) that uniquely identifies the destination backup vault for the copied backup | `string` | n/a | yes |
| kms\_key\_arn | The server-side encryption key that is used to protect your backups | `string` | n/a | yes |
| schedule | A CRON expression specifying when AWS Backup initiates a backup job | `string` | n/a | yes |
| start\_window | The amount of time in minutes before beginning a backup. Minimum value is 60 minutes | `number` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| backup\_plan\_arn | Backup Plan ARN |
| backup\_plan\_version | Unique, randomly generated, Unicode, UTF-8 encoded string that serves as the version ID of the backup plan |
| backup\_selection\_id | Backup Selection ID |
| backup\_vault\_arn | Backup Vault ARN |
| backup\_vault\_id | Backup Vault ID |
| backup\_vault\_recovery\_points | Backup Vault recovery points |




## Related Projects

You can find more [Terraform Modules](terraform_modules) by vising the link.

Additionally, check out these other related, and maintained projects.

- [%!s(<nil>)](%!s(<nil>)) - %!s(<nil>)





## Help

**Got a question?** We got answers. 

File a Github [issue](https://github.com/humnai/backup/issues), or message us on [Slack][slack]


### Contributors

|  [![Callum Robertson][callumccr_avatar]][callumccr_homepage]<br/>[Callum Robertson][callumccr_homepage] |
|---|


  [callumccr_homepage]: https://www.linkedin.com/in/callum-robertson-1a55b6110/

  [callumccr_avatar]: https://media-exp1.licdn.com/dms/image/C5603AQHb_3oZMZA5YA/profile-displayphoto-shrink_200_200/0?e=1588809600&v=beta&t=5QQQAlHrm1od5fQNZwdjOtbZWvsGcgNBqFRhZWgnPx4




---



---


[![README Footer][logo]][website]

  [logo]: https://humnai-web-assests.s3-eu-west-1.amazonaws.com/humn-logo.png
  [website]: https://https://humn.ai/
  [github]: https://github.com/humn-ai/tf-humn-iac-live
  [slack]: humncloud.slack.com