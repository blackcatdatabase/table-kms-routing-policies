# kms_routing_policies

Routing directives describing how tenants map to KMS providers.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| active | BOOLEAN | NO | TRUE | Whether the policy is active. |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |
| id | BIGINT | NO |  | Surrogate primary key. |
| match | JSONB | YES |  | JSON filter describing when to apply the policy. |
| name | VARCHAR(120) | NO |  | Policy name. |
| priority | INTEGER | NO | 0 | Priority ordering (higher first). |
| providers | JSONB | NO |  | JSON list of provider options/weights. |
| strategy | TEXT | NO | prefer | Routing strategy. (enum: prefer, require, avoid) |

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
| vw_kms_routing_matrix | mysql | algorithm=MERGE, security=INVOKER | [packages\kms-routing-policies\schema\040_views_joins.mysql.sql](https://github.com/blackcatacademy/blackcat-database/packages/kms-routing-policies/schema/040_views_joins.mysql.sql) |
| vw_kms_routing_policies | mysql | algorithm=MERGE, security=INVOKER | [packages\kms-routing-policies\schema\040_views.mysql.sql](https://github.com/blackcatacademy/blackcat-database/packages/kms-routing-policies/schema/040_views.mysql.sql) |
| vw_kms_routing_matrix | postgres |  | [packages\kms-routing-policies\schema\040_views_joins.postgres.sql](https://github.com/blackcatacademy/blackcat-database/packages/kms-routing-policies/schema/040_views_joins.postgres.sql) |
| vw_kms_routing_policies | postgres |  | [packages\kms-routing-policies\schema\040_views.postgres.sql](https://github.com/blackcatacademy/blackcat-database/packages/kms-routing-policies/schema/040_views.postgres.sql) |
