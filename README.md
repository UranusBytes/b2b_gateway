# b2b_gateway

## Overview
A serverless gateway of various protocols for B2B integrations involving file transfers.

This is a framework of AWS services that provide support for multiple protocols to transfer files to/from a location, as used with a B2B integration.

### File transfer protocols supported
* SFTP


### Authentication methods supported
* SFTP
  * SSH Key


## Workflow
The following ingress workflows are supported:
* SFTP
  * The external tenant will initiate an inbound SFTP connection, authenticating with per-tenant SSH keys.  This connection will have the ability to PUT files to /<tenant_id>/inbound.
  * Any files PUT to the location will be dropped to a S3 bucket at /<tenant_id>/inbound
  * The S3 bucket will generate a message in a SQS queue
  
The following egress workflows are supported:
* SFTP
  * The external tenant will initiate an inbound SFTP connection, authenticating with per-tenant SSH keys.  This connection will have the ability to LIST/GET/DELETE files to /<tenant_id>/outbound.




## Resources
The following AWS resources are deployed and used by this solution:
* S3 bucket


## Assumptions
The following assumptions have been made for this solution:
* 

## Configuration

Configuration of the solution is drive by variables defined in the `terraform.tvvars` file.
* 


## Deployment to AWS

The deployment of the AWS resources is driven by Terraform:

```bash
terraform init

```

## Cleanup

To delete the solution, use the power of Terraform

```bash
terraform destroy
```

## Improvements / ToDo

Stuff to improve or still to do:
* * HTTPS POST/GET (AWS API Gateway)
* HTTPS
  * API Key
* Add an outbound webhook for notification of new files ready to be picked up
* Allow for multiple creds to be used for each tenant (cred rolling)
