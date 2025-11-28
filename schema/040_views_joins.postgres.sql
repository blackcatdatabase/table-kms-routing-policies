-- Auto-generated from joins-postgres.psd1 (map@mtime:2025-11-27T17:17:38Z)
-- engine: postgres
-- view:   kms_routing_policies_matrix

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
