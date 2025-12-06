-- Auto-generated from schema-map-mysql.yaml (map@sha1:5E62933580349BE7C623D119AC9D1301A62F03EF)
-- engine: mysql
-- table:  kms_routing_policies

CREATE TABLE IF NOT EXISTS kms_routing_policies (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(120) NOT NULL,
  priority INT NOT NULL DEFAULT 0,
  strategy ENUM('prefer','require','avoid') NOT NULL DEFAULT 'prefer',
  `match` JSON NULL,
  providers JSON NOT NULL,
  active BOOLEAN NOT NULL DEFAULT TRUE,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  CONSTRAINT ux_kms_route_name UNIQUE (name),
  INDEX idx_kms_route_active (active, priority DESC)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
