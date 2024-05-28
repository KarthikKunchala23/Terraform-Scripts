terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

#configure the GitHub provider
provider "github" {
  token = ""
}

resource "github_repository" "example" {
  name        = "terraform-cloud"
  description = "Created by Terraform cloud"

  visibility = "public"

}
