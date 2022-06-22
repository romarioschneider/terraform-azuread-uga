# Introduction 
TODO: Give a short introduction of your project. Let this section explain the objectives or the motivation behind this project. 

# Getting Started
TODO: Guide users through getting your code up and running on their own system. In this section you can talk about:
1.	Installation process
2.	Software dependencies
3.	Latest releases
4.	API references

# Build and Test
TODO: Describe and show how to build your code and run the tests. 

# Contribute
TODO: Explain how other users and developers can contribute to make your code better. 

If you want to learn more about creating good readme files then refer the following [guidelines](https://docs.microsoft.com/en-us/azure/devops/repos/git/create-a-readme?view=azure-devops). You can also seek inspiration from the below readme files:
- [ASP.NET Core](https://github.com/aspnet/Home)
- [Visual Studio Code](https://github.com/Microsoft/vscode)
- [Chakra Core](https://github.com/Microsoft/ChakraCore)
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.7 |
| <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) | = 2.22.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | = 2.22.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azuread_group.group](https://registry.terraform.io/providers/hashicorp/azuread/2.22.0/docs/resources/group) | resource |
| [azuread_group.group_check](https://registry.terraform.io/providers/hashicorp/azuread/2.22.0/docs/data-sources/group) | data source |
| [azuread_groups.existing_groups](https://registry.terraform.io/providers/hashicorp/azuread/2.22.0/docs/data-sources/groups) | data source |
| [azuread_users.users](https://registry.terraform.io/providers/hashicorp/azuread/2.22.0/docs/data-sources/users) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assignments"></a> [assignments](#input\_assignments) | Azure Active Directory users list to assign to group named. Module will fail if user doesn't exist | <pre>map(object({<br>    users = list(any)<br>  }))</pre> | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_managed_groups"></a> [managed\_groups](#output\_managed\_groups) | Managed Active Directory groups and members ids |
<!-- END_TF_DOCS -->