
resource "google_bigquery_dataset" "dataset" {
  dataset_id = "dataset_name"
  description = "Data warehouse for analytics"
  location = "asia-southeast2"

}

resource "google_bigquery_table" "fct_table" {
  dataset_id = google_bigquery_dataset.dataset.dataset_id
  table_id = "fct_track"
  schema = <<EOF
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
