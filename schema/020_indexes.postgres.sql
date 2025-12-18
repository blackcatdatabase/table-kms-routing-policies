-- Auto-generated from schema-map-postgres.yaml (map@sha1:621FDD3D99B768B6A8AD92061FB029414184F4B3)
-- engine: postgres
-- table:  kms_routing_policies

CREATE UNIQUE INDEX IF NOT EXISTS ux_kms_route_name ON kms_routing_policies (name);

CREATE INDEX IF NOT EXISTS idx_kms_route_active ON kms_routing_policies (active, priority DESC);
