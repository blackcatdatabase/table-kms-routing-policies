<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – kms_routing_policies

Routing directives describing how tenants map to KMS providers.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| name | VARCHAR(120) | NO | — | Policy name. |  |
| priority | INTEGER | NO | 0 | Priority ordering (higher first). |  |
| strategy | TEXT | NO | 'prefer' | Routing strategy. | enum: prefer, require, avoid |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |