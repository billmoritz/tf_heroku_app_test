terraform {
  required_version = "0.12.26"
}

provider "heroku" {
  version = "~> 2.6.1"
}

resource "heroku_app" "app" {
  name   = "billmoritz-test-app"
  region = "virginia"
  space  = var.heroku_space

  organization {
    name = var.heroku_org
    locked = var.locked
  }
}

variable "heroku_org" {
    type = string
}

variable "heroku_space" {
    type = string
}

variable "locked" {
    type = string
}