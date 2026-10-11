resource "google_clouddeploy_deploy_policy" "clouddeploy_deploy_policies" {
  for_each = var.clouddeploy_deploy_policies

  location        = each.value.location
  name            = each.value.name
  annotations     = each.value.annotations
  deletion_policy = each.value.deletion_policy
  description     = each.value.description
  labels          = each.value.labels
  project         = each.value.project
  suspended       = each.value.suspended

  dynamic "rules" {
    for_each = each.value.rules
    content {
      dynamic "rollout_restriction" {
        for_each = rules.value.rollout_restriction != null ? [rules.value.rollout_restriction] : []
        content {
          actions  = rollout_restriction.value.actions
          id       = rollout_restriction.value.id
          invokers = rollout_restriction.value.invokers
          dynamic "time_windows" {
            for_each = rollout_restriction.value.time_windows != null ? [rollout_restriction.value.time_windows] : []
            content {
              dynamic "one_time_windows" {
                for_each = time_windows.value.one_time_windows != null ? time_windows.value.one_time_windows : []
                content {
                  end_date {
                    day   = one_time_windows.value.end_date.day
                    month = one_time_windows.value.end_date.month
                    year  = one_time_windows.value.end_date.year
                  }
                  end_time {
                    hours   = one_time_windows.value.end_time.hours
                    minutes = one_time_windows.value.end_time.minutes
                    nanos   = one_time_windows.value.end_time.nanos
                    seconds = one_time_windows.value.end_time.seconds
                  }
                  start_date {
                    day   = one_time_windows.value.start_date.day
                    month = one_time_windows.value.start_date.month
                    year  = one_time_windows.value.start_date.year
                  }
                  start_time {
                    hours   = one_time_windows.value.start_time.hours
                    minutes = one_time_windows.value.start_time.minutes
                    nanos   = one_time_windows.value.start_time.nanos
                    seconds = one_time_windows.value.start_time.seconds
                  }
                }
              }
              time_zone = time_windows.value.time_zone
              dynamic "weekly_windows" {
                for_each = time_windows.value.weekly_windows != null ? time_windows.value.weekly_windows : []
                content {
                  days_of_week = weekly_windows.value.days_of_week
                  dynamic "end_time" {
                    for_each = weekly_windows.value.end_time != null ? [weekly_windows.value.end_time] : []
                    content {
                      hours   = end_time.value.hours
                      minutes = end_time.value.minutes
                      nanos   = end_time.value.nanos
                      seconds = end_time.value.seconds
                    }
                  }
                  dynamic "start_time" {
                    for_each = weekly_windows.value.start_time != null ? [weekly_windows.value.start_time] : []
                    content {
                      hours   = start_time.value.hours
                      minutes = start_time.value.minutes
                      nanos   = start_time.value.nanos
                      seconds = start_time.value.seconds
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  dynamic "selectors" {
    for_each = each.value.selectors
    content {
      dynamic "delivery_pipeline" {
        for_each = selectors.value.delivery_pipeline != null ? [selectors.value.delivery_pipeline] : []
        content {
          id     = delivery_pipeline.value.id
          labels = delivery_pipeline.value.labels
        }
      }
      dynamic "target" {
        for_each = selectors.value.target != null ? [selectors.value.target] : []
        content {
          id     = target.value.id
          labels = target.value.labels
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

