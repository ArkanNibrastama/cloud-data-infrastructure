# upload code to stage location (GCS)
resource "google_storage_bucket_object" "file_code"{

    name   = var.file_name
    bucket = var.bucket
    source = var.file_source

}

resource "google_cloudfunctions2_function" "cloud_function" {
  name = var.func_name
  location = var.region
  description = var.desc

  build_config {
    runtime = var.runtime
    entry_point = var.entry_point
    source {
      storage_source {
        bucket = google_storage_bucket_object.file_code.bucket
        object = google_storage_bucket_object.file_code.name
      }
    }
  }

  service_config {
    max_instance_count  = var.max_instance_count
    available_memory    = var.memory
    timeout_seconds     = var.timeout
  }
}


resource "google_cloud_run_service_iam_binding" "default" {
  location = google_cloudfunctions2_function.cloud_function.location
  service = google_cloudfunctions2_function.cloud_function.name

  role   = var.role
  members = var.members
}