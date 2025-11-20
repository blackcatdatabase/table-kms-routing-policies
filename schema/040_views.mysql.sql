-- Auto-generated from schema-views-mysql.psd1 (map@db2f8b8)
-- engine: mysql
-- table:  kms_routing_policies_matrix
-- Active KMS routing policies (ordered by priority)
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_kms_routing_matrix AS
SELECT
  name,
  priority,
  strategy,
  `match`,
  providers,
  active,
  created_at
FROM kms_routing_policies
WHERE active
ORDER BY priority DESC, name;

-- Auto-generated from schema-views-mysql.psd1 (map@db2f8b8)
-- engine: mysql
-- table:  kms_routing_policies
-- Contract view for [kms_routing_policies]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_kms_routing_policies AS
SELECT
  id,
  name,
  priority,
  strategy,
  `match`,
  providers,
  active,
  created_at
FROM kms_routing_policies;

