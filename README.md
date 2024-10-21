# terraform-workflow-deployment

### [Use the Azure Login action with a client secret] (https://learn.microsoft.com/en-us/azure/developer/github/connect-from-azure-secret)

{
      "clientId": "<Client ID>",
      "clientSecret": "<Client Secret>",
      "subscriptionId": "<Subscription ID>",
      "tenantId": "<Tenant ID>"
  }

### [terraform] (https://www.veeam.com/blog/azure-terraform-github-actions-deployment.html)
### [yaml-lint] (https://www.yamllint.com/)
### [terraform-sp] (https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/service_principal_client_secret)
### [terraform steps] (https://github.com/hashicorp/terraform-github-actions/blob/master/examples/credentials-file.md)
### [custom-modules] (https://www.youtube.com/watch?v=o9KD7lLrQvg)
### [private-endpoint-module] (https://github.com/andrewCluey/terraform-azurerm-private-endpoint/blob/master/examples/blob_endpoint/main.tf)
### [NSG] (https://github.com/aztfm/terraform-azurerm-network-security-group/blob/main/main.tf)
### [To register resoruce providers via cli] (https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/resource-providers-and-types)

###[commands] [az provider register --namespace Microsoft.HDInsight] [az provider show -n Microsoft.HDInsight] [az provider list --query "[].{Provider:namespace, Status:registrationState}" --out table]
