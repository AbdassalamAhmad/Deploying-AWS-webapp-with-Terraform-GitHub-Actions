
# #---------------------ElastiCache Cluster--------------------
# resource "aws_elasticache_cluster" "elasticache_cluster" {
#   cluster_id           = "elasticache-cluster"
#   engine               = "redis"
#   node_type            = "cache.t3.micro"
#   num_cache_nodes      = 1
#   parameter_group_name = "default.redis7"
#   engine_version       = "7.0"
#   port                 = 6379
#   security_group_ids = [aws_security_group.ElastiCacheSG.id]
#   subnet_group_name    = aws_elasticache_subnet_group.elasticache_subnet_group.name

# }

# resource "aws_elasticache_subnet_group" "elasticache_subnet_group" {
#   name       = "main"
#   subnet_ids = [module.network.private_db_subnet_1_id, module.network.private_db_subnet_2_id]
# }