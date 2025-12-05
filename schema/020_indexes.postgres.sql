-- Auto-generated from schema-map-postgres.yaml (map@sha1:F0EE237771FBA8DD7C4E886FF276F91A862C3718)
-- engine: postgres
-- table:  kms_routing_policies

CREATE UNIQUE INDEX IF NOT EXISTS ux_kms_route_name ON kms_routing_policies (name);

CREATE INDEX IF NOT EXISTS idx_kms_route_active ON kms_routing_policies (active, priority DESC);
