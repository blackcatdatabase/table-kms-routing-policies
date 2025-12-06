-- Auto-generated from schema-views-postgres.yaml (map@sha1:EDC13878AE5F346E7EAD2CF0A484FEB7E68F6CDD)
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
