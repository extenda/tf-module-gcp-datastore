module datastore {
  source = "../"

  project_id  = "project-id"

  indexes = [
    {
      kind = "TaskList"
      ancestor = "NONE"
      properties = [
        {
          name = "test"
          direction = "ASCENDING"
        },
        {
          name = "test1"
          direction = "DESCENDING"
        },
      ]
    },
    {
      kind = "Task"
      properties = [
        {
          name = "test2"
          direction = "DESCENDING"
        },
      ]
    },
  ]
}
