# tf-module-gcp-datastore

## Description

Describes a composite index for Cloud Datastore. This resource creates a Datastore Index on a project that has already enabled a Datastore-compatible database.

## Providers

| Name | Version |
|------|---------|
| google | ~> 3.89.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| indexes |The map of indexes and the and an ordered list of properties to index on. | `any` | n/a | yes |
| project\_id | The ID of the project where the resource will be created. | `string` | n/a | yes |
