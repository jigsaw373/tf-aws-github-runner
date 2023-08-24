variable "github_app_ep" {
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

variable "ep_ec2_types" {
  description = "Types of ec2 spot instances to use for runners"
  type        = list
  default     = ["c4.large", "c4.xlarge"]
}

variable "ep_idle_config" {
  description = "Cron for projects active hours to keep machines online"

  type = object({
    time      = string
    timeZone  = string
    idleCount = number
  })
   default = {
    time      = "* * 10-17 * * 0,1,2,3,6" 
    timeZone  = "Asia/Tehran"
    idleCount = 1
     }
}

variable "ep_max_count" {
  description = "Maximum number of ec2 to be allowed to run simultaneously"
  type        = number
  default     = 2
}