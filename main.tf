provider "aws" {
  profile = var.profile_name  # AWS CLI profile name
  region = var.aws_region
}

module "azure_arc" {
  #source  = "git::https://github.com/sviswanath-ilx/azure-arc-aws-module?ref=1.0.0"
  source  = "git::https://github.com/sviswanath-ilx/azure-arc-aws-module?ref=1.0.1"
  #source = "file:///C:/ilx/azure-arc-module"  # Path to your local module

  ArcForServerEC2SSMRoleName                 = var.ArcForServerEC2SSMRoleName
  ArcForServerSSMInstanceProfileName         = var.ArcForServerSSMInstanceProfileName
  ConnectorPrimaryIdentifier                 = var.ConnectorPrimaryIdentifier
  EC2SSMIAMRoleAutoAssignment                = var.EC2SSMIAMRoleAutoAssignment
  EC2SSMIAMRoleAutoAssignmentSchedule        = var.EC2SSMIAMRoleAutoAssignmentSchedule
  EC2SSMIAMRoleAutoAssignmentScheduleInterval = var.EC2SSMIAMRoleAutoAssignmentScheduleInterval
  EC2SSMIAMRolePolicyUpdateAllowed           = var.EC2SSMIAMRolePolicyUpdateAllowed
  oidc_client_id                             = var.oidc_client_id
  oidc_thumbprint                            = var.oidc_thumbprint
  oidc_url                                   = var.oidc_url
  azure_connector_id                         = var.azure_connector_id
  
}