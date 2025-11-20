-- Auto-generated from schema-map-postgres.psd1 (map@62c9c93)
-- engine: postgres
-- table:  kms_routing_policies
CREATE INDEX IF NOT EXISTS idx_kms_route_active ON kms_routing_policies (active, priority DESC);
