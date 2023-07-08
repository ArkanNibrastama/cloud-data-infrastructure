
resource "google_bigquery_dataset" "dataset" {
  dataset_id = var.dataset_id
  description = var.description
  location = var.location

}

resource "google_bigquery_table" "fct_table" {
  dataset_id = google_bigquery_dataset.dataset.dataset_id
  table_id = var.table_id
  schema = var.schema
}
