module "towerworkload1@mailbox.org" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "towerworkload1@mailbox.org"
    AccountName               = "ff-workload1"
    ManagedOrganizationalUnit = "Workloads"
    SSOUserEmail              = "towermaster@mailbox.org"
    SSOUserFirstName          = "Control Tower"
    SSOUserLastName           = "Admin"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "workloads"
}
