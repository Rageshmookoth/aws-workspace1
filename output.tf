output "workspace_name" {
  description = "Computer name of workspace"
  value       = aws_workspaces_workspace.awsworkspace.computer_name
}