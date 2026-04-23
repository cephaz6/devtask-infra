module "compute" {
  source = "./modules/compute"

  project_name       = var.project_name
  app_subnet_ids     = module.networking.app_subnet_ids
  app_sg_id          = module.security.app_sg_id
  target_group_arn   = module.loadbalancer.target_group_arn
  execution_role_arn = aws_iam_role.ecs_execution.arn
  task_role_arn      = aws_iam_role.ecs_task.arn
  db_endpoint        = module.database.db_endpoint
  db_name            = var.db_name
  db_username        = var.db_username
  listener_arn       = module.loadbalancer.listener_arn
}