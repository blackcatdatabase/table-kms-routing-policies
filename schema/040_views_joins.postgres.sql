-- Auto-generated from joins-postgres.yaml (map@85230ed)
-- engine: postgres
-- view:   kms_routing_matrix

-- Active KMS routing policies (ordered by priority)
CREATE OR REPLACE VIEW vw_kms_routing_matrix AS
SELECT
  name,
  priority,
  strategy,
  "match",
  providers,
  active,
  created_at
FROM kms_routing_policies
WHERE active;
