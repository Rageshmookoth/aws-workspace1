output "Workspacename" {
  value = "${data.terraform_remote_state.outputs.computer_name}"
}