variable "project_id" {
  default = "YOUR PROJECT ID"
}
variable "location" {
  default = "asia-southeast2"
}
variable "zone" {
  default = "asia-southeast2-a"
}
variable "dataset_id" {
  default = "YOUR DATASET ID"
}
variable "description" {
  default = "description for dataset"
}
variable "table_id" {
  default = "YOUR TABLE ID"
}
variable "schema" {
  default = <<EOF
        [

          {
            "name": "id",
            "type": "INTEGER",
            "mode": "REQUIRED",
            "description": "id"
          },
          {
            "name": "name",
            "type": "STRING",
            "mode": "NULLABLE",
            "description": "name"
          }

        ]
    EOF
}