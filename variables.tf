variable "data_safe_sql_collection_analytics_lookup" {
  description = <<EOT
Map of data_safe_sql_collection_analytics_lookup, attributes below
Required:
    - compartment_id
Optional:
    - access_level
    - compartment_id_in_subtree
    - group_by
    - state
    - target_database_group_id
    - target_id
    - time_ended
    - time_started
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id            = string
    access_level              = optional(string)
    compartment_id_in_subtree = optional(bool)
    group_by                  = optional(list(string))
    state                     = optional(string)
    target_database_group_id  = optional(string)
    target_id                 = optional(string)
    time_ended                = optional(string)
    time_started              = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

