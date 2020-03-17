variable "project" {
  description = "The project ID where all resources will be launched."
  type        = string
}

variable "region" {
  description = "The region for the network. If the cluster is regional, this must be the same region. Otherwise, it should be the region of the zone."
  type        = string
}

variable "github_owner" {
  description = "Name of the GitHub Repository Owner."
  type        = string
}

variable "github_repository" {
  description = "Name of the GitHub Repository."
  type        = string
}

variable "branch_name" {
  description = "Example branch name used to trigger builds."
  type        = string
}
