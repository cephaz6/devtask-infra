module "database" {
  source = "./modules/database"

  project_name  = var.project_name
  db_name       = var.db_name
  db_username   = var.db_username
  db_subnet_ids = module.networking.db_subnet_ids
  db_sg_id      = module.security.db_sg_id
}