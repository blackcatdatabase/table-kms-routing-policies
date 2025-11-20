-- Auto-generated from schema-views-postgres.psd1 (map@62c9c93)
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

-- Auto-generated from schema-views-postgres.psd1 (map@62c9c93)
-- engine: postgres
-- table:  kms_routing_policies_matrix
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
WHERE active
ORDER BY priority DESC, name;

