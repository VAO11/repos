resource "github_repository" "test-repo" {
  name        = "Terraform Repo"
  description = "This repository was created using terraform"

  visibility             = "public"
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  delete_branch_on_merge = true
  auto_init              = true
  license_template       = "gpl-3.0"
  archive_on_destroy     = true

  # TODO: https://stackoverflow.com/questions/59688159/github-api-create-a-repository-from-template-authenticated-as-installation
  # template {
  #   owner      = "vao11"
  #   repository = "template"
  # }
}
resource "github_repository" "test-repo2" {
  name        = "Terraform Import Repo"
  description = "This repository will be imported using terraform"

  visibility             = "public"

}