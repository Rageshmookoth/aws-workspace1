output "Workspacename" {
  value = "${data.aws_workspaces_bundle.awsworkspace.computer_name}"
}