variable "project_id" {
  default = "YOUR PROJECT ID"
}
variable "region" {
  default = "asia-southeast2"
}
variable "zone" {
  default = "asia-southeast2-a"
}
variable "file_name" {
  default = "main.py" #your code file name in GCS, for example I'm using main.py
}
variable "bucket" {
  default = "./main.py"#your code file name from local computer
}
variable "func_name" {
  default = "YOUR CLOUD FUNCTION NAME"
}
variable "desc" {
  default = "YOUR CLOUD FUNCTION DESCRIPTION"
}
variable "runtime" {
  default = "python310" #what programming language in this function? for example I'm using python v.3.10
}

variable "entry_point" {
  default = "function_name"# same as the function name on main.py
}

variable "role" {
  default = "roles/run.invoker"
}

variable "members" {
  default = [
    "allUsers"
  ]
}

variable "max_instance_count" {
  default = 1
}

variable "memory" {
  default = "256M"
}
variable "timeout" {
  default = 60
}