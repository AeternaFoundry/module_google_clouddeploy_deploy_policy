output "clouddeploy_deploy_policies_id" {
  description = "Map of id values across all clouddeploy_deploy_policies, keyed the same as var.clouddeploy_deploy_policies except keys with no id are omitted"
  value       = { for k, v in google_clouddeploy_deploy_policy.clouddeploy_deploy_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "clouddeploy_deploy_policies_annotations" {
  description = "Map of annotations values across all clouddeploy_deploy_policies, keyed the same as var.clouddeploy_deploy_policies except keys with no annotations are omitted"
  value       = { for k, v in google_clouddeploy_deploy_policy.clouddeploy_deploy_policies : k => v.annotations if v.annotations != null && length(v.annotations) > 0 }
}
output "clouddeploy_deploy_policies_create_time" {
  description = "Map of create_time values across all clouddeploy_deploy_policies, keyed the same as var.clouddeploy_deploy_policies except keys with no create_time are omitted"
  value       = { for k, v in google_clouddeploy_deploy_policy.clouddeploy_deploy_policies : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "clouddeploy_deploy_policies_deletion_policy" {
  description = "Map of deletion_policy values across all clouddeploy_deploy_policies, keyed the same as var.clouddeploy_deploy_policies except keys with no deletion_policy are omitted"
  value       = { for k, v in google_clouddeploy_deploy_policy.clouddeploy_deploy_policies : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "clouddeploy_deploy_policies_description" {
  description = "Map of description values across all clouddeploy_deploy_policies, keyed the same as var.clouddeploy_deploy_policies except keys with no description are omitted"
  value       = { for k, v in google_clouddeploy_deploy_policy.clouddeploy_deploy_policies : k => v.description if v.description != null && length(v.description) > 0 }
}
output "clouddeploy_deploy_policies_effective_annotations" {
  description = "Map of effective_annotations values across all clouddeploy_deploy_policies, keyed the same as var.clouddeploy_deploy_policies except keys with no effective_annotations are omitted"
  value       = { for k, v in google_clouddeploy_deploy_policy.clouddeploy_deploy_policies : k => v.effective_annotations if v.effective_annotations != null && length(v.effective_annotations) > 0 }
}
output "clouddeploy_deploy_policies_effective_labels" {
  description = "Map of effective_labels values across all clouddeploy_deploy_policies, keyed the same as var.clouddeploy_deploy_policies except keys with no effective_labels are omitted"
  value       = { for k, v in google_clouddeploy_deploy_policy.clouddeploy_deploy_policies : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "clouddeploy_deploy_policies_etag" {
  description = "Map of etag values across all clouddeploy_deploy_policies, keyed the same as var.clouddeploy_deploy_policies except keys with no etag are omitted"
  value       = { for k, v in google_clouddeploy_deploy_policy.clouddeploy_deploy_policies : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "clouddeploy_deploy_policies_labels" {
  description = "Map of labels values across all clouddeploy_deploy_policies, keyed the same as var.clouddeploy_deploy_policies except keys with no labels are omitted"
  value       = { for k, v in google_clouddeploy_deploy_policy.clouddeploy_deploy_policies : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "clouddeploy_deploy_policies_location" {
  description = "Map of location values across all clouddeploy_deploy_policies, keyed the same as var.clouddeploy_deploy_policies except keys with no location are omitted"
  value       = { for k, v in google_clouddeploy_deploy_policy.clouddeploy_deploy_policies : k => v.location if v.location != null && length(v.location) > 0 }
}
output "clouddeploy_deploy_policies_name" {
  description = "Map of name values across all clouddeploy_deploy_policies, keyed the same as var.clouddeploy_deploy_policies except keys with no name are omitted"
  value       = { for k, v in google_clouddeploy_deploy_policy.clouddeploy_deploy_policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "clouddeploy_deploy_policies_project" {
  description = "Map of project values across all clouddeploy_deploy_policies, keyed the same as var.clouddeploy_deploy_policies except keys with no project are omitted"
  value       = { for k, v in google_clouddeploy_deploy_policy.clouddeploy_deploy_policies : k => v.project if v.project != null && length(v.project) > 0 }
}
output "clouddeploy_deploy_policies_rules" {
  description = "Map of rules values across all clouddeploy_deploy_policies, keyed the same as var.clouddeploy_deploy_policies except keys with no rules are omitted"
  value       = { for k, v in google_clouddeploy_deploy_policy.clouddeploy_deploy_policies : k => v.rules if v.rules != null && length(v.rules) > 0 }
}
output "clouddeploy_deploy_policies_selectors" {
  description = "Map of selectors values across all clouddeploy_deploy_policies, keyed the same as var.clouddeploy_deploy_policies except keys with no selectors are omitted"
  value       = { for k, v in google_clouddeploy_deploy_policy.clouddeploy_deploy_policies : k => v.selectors if v.selectors != null && length(v.selectors) > 0 }
}
output "clouddeploy_deploy_policies_suspended" {
  description = "Map of suspended values across all clouddeploy_deploy_policies, keyed the same as var.clouddeploy_deploy_policies except keys with no suspended are omitted"
  value       = { for k, v in google_clouddeploy_deploy_policy.clouddeploy_deploy_policies : k => v.suspended if v.suspended != null }
}
output "clouddeploy_deploy_policies_terraform_labels" {
  description = "Map of terraform_labels values across all clouddeploy_deploy_policies, keyed the same as var.clouddeploy_deploy_policies except keys with no terraform_labels are omitted"
  value       = { for k, v in google_clouddeploy_deploy_policy.clouddeploy_deploy_policies : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "clouddeploy_deploy_policies_uid" {
  description = "Map of uid values across all clouddeploy_deploy_policies, keyed the same as var.clouddeploy_deploy_policies except keys with no uid are omitted"
  value       = { for k, v in google_clouddeploy_deploy_policy.clouddeploy_deploy_policies : k => v.uid if v.uid != null && length(v.uid) > 0 }
}
output "clouddeploy_deploy_policies_update_time" {
  description = "Map of update_time values across all clouddeploy_deploy_policies, keyed the same as var.clouddeploy_deploy_policies except keys with no update_time are omitted"
  value       = { for k, v in google_clouddeploy_deploy_policy.clouddeploy_deploy_policies : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

