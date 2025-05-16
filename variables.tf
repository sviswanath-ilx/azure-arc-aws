variable "profile_name" {
  type        = string
  description = "Provide profile name for AWS CLI"
  default     = "sandbox"  # Replace with your actual AWS CLI profile name
}

variable "aws_region" {
  description = "Provide region name for AWS"
  type        = string
  default = "us-east-2"
}

variable "ArcForServerEC2SSMRoleName" {
  default = "AzureArcForServerSSM"
}
variable "ArcForServerSSMInstanceProfileName" {
  default = "AzureArcForServerSSMInstanceProfile"
}
variable "ConnectorPrimaryIdentifier" {
  #default = "3b4f21d7-4dca-4d6c-aa8b-a2d884b347f4" # Two regions
  default = "7d507318-43a0-4645-b97f-d4f331cdfb04" # Multi regions
}
variable "EC2SSMIAMRoleAutoAssignment" {
  default = "true"
}
variable "EC2SSMIAMRoleAutoAssignmentSchedule" {
  default = "Enable"
}
variable "EC2SSMIAMRoleAutoAssignmentScheduleInterval" {
  default = "1 day"
}
variable "EC2SSMIAMRolePolicyUpdateAllowed" {
  default = "true"
}
variable "oidc_client_id" {
  #default = "api://34a6b290-8d65-48d3-966d-52758964f5e0" # Two regions
  default = "api://34a6b290-8d65-48d3-966d-52758964f5e9" # Mutlti regions
}
variable "oidc_thumbprint" {
  #default = "626d44e704d1ceabe3bf0d53397464ac8080143ca" # Two regions
  default = "626d44e704d1ceabe3bf0d53397464ac8080142c"  # Mutlti regions

}
variable "oidc_url" {
  #default = "https://sts.windows.net/975f013f-7f24-47e8-a7d3-abc4752bf356/" # Two regions
  default = "https://sts.windows.net/975f013f-7f24-47e8-a7d3-abc4752bf346/"  # Mutlti regions
}
variable "azure_connector_id" {
  #default = "/subscriptions/f7f17b68-862f-46b7-b8a9-aea4b7bc27d6/resourcegroups/viswa-rg/providers/microsoft.hybridconnectivity/publiccloudconnectors/azure-to-aws" # Two regions
  default = "/subscriptions/f7f17b68-862f-46b7-b8a9-aea4b7bc27d6/resourcegroups/viswa-rg/providers/microsoft.hybridconnectivity/publiccloudconnectors/azure-to-aws-02" # Mutlti regions
}

