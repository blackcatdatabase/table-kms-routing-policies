-- Auto-generated from core\joins-mysql.yaml (map@sha1:DA70105A5B799F72A56FEAB71A5171F946A770D2)
-- engine: mysql
-- view:   kms_routing_matrix

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
WHERE active;
