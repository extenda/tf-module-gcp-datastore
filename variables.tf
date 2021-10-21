variable project_id {
  description = "The ID of the project where the resource will be created."
  type        = string
}

variable region {
  type    = string
  default = "europe-west-1"
}

variable indexes {
  description = "The map of indexes and the and an ordered list of properties to index on."
  type        = any
}
