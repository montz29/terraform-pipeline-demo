terraform {
  required_version = ">= 1.0.0"
}

resource "local_file" "pipeline_demo" {
  content  = "Hello from my updated Pull Request pipeline test!"
  filename = "${path.module}/demo.txt"
}

output "file_status" {
  value = "Successfully created ${local_file.pipeline_demo.filename}"
}