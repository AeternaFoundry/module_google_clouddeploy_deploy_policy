variable "clouddeploy_deploy_policies" {
  description = <<EOT
Map of clouddeploy_deploy_policies, attributes below
Required:
    - location
    - name
    - rules (block):
        - rollout_restriction (optional, block):
            - actions (optional)
            - id (required)
            - invokers (optional)
            - time_windows (optional, block):
                - one_time_windows (optional, block):
                    - end_date (required, block):
                        - day (optional)
                        - month (optional)
                        - year (optional)
                    - end_time (required, block):
                        - hours (optional)
                        - minutes (optional)
                        - nanos (optional)
                        - seconds (optional)
                    - start_date (required, block):
                        - day (optional)
                        - month (optional)
                        - year (optional)
                    - start_time (required, block):
                        - hours (optional)
                        - minutes (optional)
                        - nanos (optional)
                        - seconds (optional)
                - time_zone (required)
                - weekly_windows (optional, block):
                    - days_of_week (optional)
                    - end_time (optional, block):
                        - hours (optional)
                        - minutes (optional)
                        - nanos (optional)
                        - seconds (optional)
                    - start_time (optional, block):
                        - hours (optional)
                        - minutes (optional)
                        - nanos (optional)
                        - seconds (optional)
    - selectors (block):
        - delivery_pipeline (optional, block):
            - id (optional)
            - labels (optional)
        - target (optional, block):
            - id (optional)
            - labels (optional)
Optional:
    - annotations
    - deletion_policy
    - description
    - labels
    - project
    - suspended
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    location        = string
    name            = string
    annotations     = optional(map(string))
    deletion_policy = optional(string)
    description     = optional(string)
    labels          = optional(map(string))
    project         = optional(string)
    suspended       = optional(bool)
    rules = list(object({
      rollout_restriction = optional(object({
        actions  = optional(list(string))
        id       = string
        invokers = optional(list(string))
        time_windows = optional(object({
          one_time_windows = optional(list(object({
            end_date = object({
              day   = optional(number)
              month = optional(number)
              year  = optional(number)
            })
            end_time = object({
              hours   = optional(number)
              minutes = optional(number)
              nanos   = optional(number)
              seconds = optional(number)
            })
            start_date = object({
              day   = optional(number)
              month = optional(number)
              year  = optional(number)
            })
            start_time = object({
              hours   = optional(number)
              minutes = optional(number)
              nanos   = optional(number)
              seconds = optional(number)
            })
          })))
          time_zone = string
          weekly_windows = optional(list(object({
            days_of_week = optional(list(string))
            end_time = optional(object({
              hours   = optional(number)
              minutes = optional(number)
              nanos   = optional(number)
              seconds = optional(number)
            }))
            start_time = optional(object({
              hours   = optional(number)
              minutes = optional(number)
              nanos   = optional(number)
              seconds = optional(number)
            }))
          })))
        }))
      }))
    }))
    selectors = list(object({
      delivery_pipeline = optional(object({
        id     = optional(string)
        labels = optional(map(string))
      }))
      target = optional(object({
        id     = optional(string)
        labels = optional(map(string))
      }))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.clouddeploy_deploy_policies : (
        length(v.rules) >= 1
      )
    ])
    error_message = "Each rules list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.clouddeploy_deploy_policies : (
        length(v.selectors) >= 1
      )
    ])
    error_message = "Each selectors list must contain at least 1 items"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

