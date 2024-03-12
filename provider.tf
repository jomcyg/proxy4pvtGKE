//   Copyright 2021 binx.io B.V.
//
//   Licensed under the Apache License, Version 2.0 (the "License");
//   you may not use this file except in compliance with the License.
//   You may obtain a copy of the License at
//
//       http://www.apache.org/licenses/LICENSE-2.0
//
//   Unless required by applicable law or agreed to in writing, software
//   distributed under the License is distributed on an "AS IS" BASIS,
//   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//   See the License for the specific language governing permissions and
//   limitations under the License.
//
provider "google" {
  region  = var.region
  project = var.project
}

data "google_client_config" "current" {
}

data "google_project" "current" {
  project_id = data.google_client_config.current.project
}
module "dir" {
  source  = "hashicorp/dir/template"
  version = "1.0.2"
  # insert the 1 required variable here
}