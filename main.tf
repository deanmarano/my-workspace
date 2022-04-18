terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.1.2"
    }
  }
}

resource "random_uuid" "this" {
}

output "uuid" {
  value = random_uuid.this.result
}
