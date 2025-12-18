# kms_routing_policies

Routing directives describing how tenants map to KMS providers.

## Columns
| Column | Type | Null | Default | Description | Crypto |
| --- | --- | --- | --- | --- | --- |
| id | BIGINT | NO |  | Surrogate primary key. |  |
| name | VARCHAR(120) | NO |  | Policy name. |  |
| priority | mysql: INT / postgres: INTEGER | NO | 0 | Priority ordering (higher first). |  |
| strategy | mysql: ENUM('prefer','require','avoid') / postgres: TEXT | NO | prefer | Routing strategy. (enum: prefer, require, avoid) |  |
| match | mysql: JSON / postgres: JSONB | YES |  | JSON filter describing when to apply the policy. |  |
| providers | mysql: JSON / postgres: JSONB | NO |  | JSON list of provider options/weights. |  |
| active | BOOLEAN | NO | TRUE | Whether the policy is active. |  |
| created_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |

## Engine Details

### mysql

Unique keys:
| Name | Columns |
| --- | --- |
| ux_kms_route_name | name |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_kms_route_active | active,priorityDESC | INDEX idx_kms_route_active (active, priority DESC) |
| ux_kms_route_name | name | CONSTRAINT ux_kms_route_name UNIQUE (name) |

### postgres

Unique keys:
| Name | Columns |
| --- | --- |
| ux_kms_route_name | name |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_kms_route_active | active,priorityDESC | CREATE INDEX IF NOT EXISTS idx_kms_route_active ON kms_routing_policies (active, priority DESC) |
| ux_kms_route_name | name | CREATE UNIQUE INDEX IF NOT EXISTS ux_kms_route_name ON kms_routing_policies (name) |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_kms_routing_matrix | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views_joins.mysql.sql](../schema/040_views_joins.mysql.sql) |
| vw_kms_routing_policies | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views.mysql.sql](../schema/040_views.mysql.sql) |
| vw_kms_routing_matrix | postgres |  | [../schema/040_views_joins.postgres.sql](../schema/040_views_joins.postgres.sql) |
| vw_kms_routing_policies | postgres |  | [../schema/040_views.postgres.sql](../schema/040_views.postgres.sql) |
