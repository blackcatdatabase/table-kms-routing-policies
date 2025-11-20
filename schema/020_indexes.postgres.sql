-- Auto-generated from schema-map-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  kms_routing_policies
CREATE INDEX IF NOT EXISTS idx_kms_route_active ON kms_routing_policies (active, priority DESC);
