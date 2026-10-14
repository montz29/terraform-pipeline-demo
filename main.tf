terraform {
  required_version = ">= 1.0.0"
}

# A simple local file resource to test pipeline execution safely
resource "local_file" "pipeline_demo" {
  content  = "Hello from my first GitHub Actions Terraform pipeline!"
  filename = "${path.module}/demo.txt"
}

output "file_status" {
  value = "Successfully created ${local_file.pipeline_demo.filename}"
}