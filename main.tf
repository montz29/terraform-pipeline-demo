terraform {
  required_version = ">= 1.0.0"

  cloud {
    organization = "montz-lab" # Replace with your actual HCP Terraform organization name

    workspaces {
      name = "terraform-pipeline-demo"
    }
  }
}

resource "local_file" "pipeline_demo" {
  content  = "Hello from my updated Pull Request pipeline test!"
  filename = "${path.module}/demo.txt"
}

output "file_status" {
  value = "Successfully created ${local_file.pipeline_demo.filename}"
}
