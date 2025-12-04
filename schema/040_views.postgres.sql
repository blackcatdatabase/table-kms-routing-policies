-- Auto-generated from schema-views-postgres.yaml (map@4ae85c5)
-- engine: postgres
-- table:  kms_routing_policies

-- Contract view for [kms_routing_policies]
CREATE OR REPLACE VIEW vw_kms_routing_policies AS
SELECT
  id,
  name,
  priority,
  strategy,
  "match",
  providers,
  active,
  created_at
FROM kms_routing_policies;
