-- Auto-generated from schema-views-mysql.yaml (map@sha1:39CF23914A48753BF55EEB1F38DDBA21AB1DBBB7)
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
