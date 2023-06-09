variable "github_app_submetering" {
  description = "GitHub for API usages."

  type = object({
    id         = string
    key_base64 = string
  })
   default = {
      id         = "id"
      key_base64 = "key"
    }
}

variable "submetering_ec2_types" {
  description = "Types of ec2 spot instances to use for runners"
  type        = list
  default     = ["t2.small", "t3.small"]
}

variable "submetering_idle_config" {
  description = "Cron for projects active hours to keep machines online"

  type = object({
    time      = string
    timeZone  = string
    idleCount = number
  })
   default = {
    time      = "* * 10-17 * * 1-5"
    timeZone  = "Canada/Eastern"
    idleCount = 3
     }
}

variable "submetering_max_count" {
  description = "Maximum number of ec2 to be allowed to run simultaneously"
  type        = number
  default     = 6
}
