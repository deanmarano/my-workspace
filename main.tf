terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.1.2"
    }
  }
}

resource "random_uuid" "this" {
  keepers = { 
  foo = timestamp()
  }
}

resource "random_uuid" "that" {
}

output "this_uuid" {
  value = random_uuid.this.result
}

output "that_uuid" {
  value = random_uuid.that.result
}

output "static_value" {
  value = "World at Peace"
}
