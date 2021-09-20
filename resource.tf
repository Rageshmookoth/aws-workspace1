
data "aws_workspaces_bundle" "awsworkspace" {
  bundle_id = "wsb-8vbljg4r6" # Value with Windows 10 (English)
}

resource "aws_workspaces_workspace" "awsworkspace" {
  directory_id = "d-90676d39bf"
  bundle_id    = "wsb-8vbljg4r6"
  user_name    = var.User

  root_volume_encryption_enabled = true
  user_volume_encryption_enabled = true
  volume_encryption_key          = "alias/aws/workspaces"

  workspace_properties {
    compute_type_name                         = "STANDARD"
    user_volume_size_gib                      = 10
    root_volume_size_gib                      = 80
    running_mode                              = "AUTO_STOP"
    running_mode_auto_stop_timeout_in_minutes = 60
    custom_security_group_id            = sg-0001db0255ee99a43
    default_ou                          = "OU=Workstations,OU=Computers,OU=demo,DC=demo,DC=com"
    enable_internet_access              = true
    enable_maintenance_mode             = true
    user_enabled_as_local_administrator = true
  }

  tags = {
    Owner = var.Owner
    Project = var.Project
    Name = "${terraform.workspace}"
    Group = var.Group
  }
}

