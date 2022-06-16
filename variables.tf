variable "assignments" {

  type = map(object({
    users = list(any)
  }))

  description = "Azure Active Directory users list to assign to group named. Module will fail if user doesn't exist"

  default = {}

}