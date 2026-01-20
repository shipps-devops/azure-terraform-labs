variable "location" {
  description = "Região dos recursos"
  type        = string
  default     = "West US"
}

variable "resource_group_name" {
  description = "Nome do grupo de recursos"
  type        = string
  default     = "devops-automation" 
}

variable "admin_username" {
  description = "Usuário administrador"
  type        = string
  default     = "azureuser"
}

variable "admin_password" {
  description = "Senha do administrador"
  type        = string
  sensitive   = true  
}