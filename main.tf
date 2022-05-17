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

output "test_tuple" {
  value = [{
    name = "Dean"
    age  = 34
  },{
    name = "Odie"
    age  = 2
  },{
    name = "Home"
    age  = 3
  },{
    name = "Squidward"
    age  = 22
  },{
    name = "Patrickk"
    age  = 8
  },{
    name = "Spongebob"
    age  = 14
  }, {
    name = "Macbook"
    age  = 1
  }]
}
