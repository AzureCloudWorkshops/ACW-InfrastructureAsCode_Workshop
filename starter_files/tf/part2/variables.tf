variable "UPDATE_ME_OR_IT_WONT_WORK" {
    type = UPDATE_ME_OR_IT_WONT_WORK
    nullable = UPDATE_ME_OR_IT_WONT_WORK
}

variable "UPDATE_ME_OR_IT_WONT_WORK" {
    type = UPDATE_ME_OR_IT_WONT_WORK
    nullable = UPDATE_ME_OR_IT_WONT_WORK
    default = "UPDATE_ME_OR_IT_WONT_WORK"

    validation {
      condition = contains(["UPDATE_ME_OR_IT_WONT_WORK"], var.location)
      error_message = "UPDATE_ME_OR_IT_WONT_WORK"
    }
}
