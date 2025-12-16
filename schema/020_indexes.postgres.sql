-- Auto-generated from schema-map-postgres.yaml (map@sha1:FAEA49A5D5F8FAAD9F850D0F430ED451C5C1D707)
-- engine: postgres
-- table:  kms_routing_policies

CREATE UNIQUE INDEX IF NOT EXISTS ux_kms_route_name ON kms_routing_policies (name);

CREATE INDEX IF NOT EXISTS idx_kms_route_active ON kms_routing_policies (active, priority DESC);
