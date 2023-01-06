WITH

source AS (
    SELECT * FROM {{ source(var('hass_raw_schema'), var('hass_raw_events_table')) }}
)

SELECT
    -- ids
    entity_id,

    -- strings
    SPLIT(entity_id, ".")[OFFSET(0)] AS entity_domain,
    SPLIT(entity_id, ".")[OFFSET(1)] AS entity_name,
    JSON_VALUE(attributes, "$.friendly_name") AS friendly_name,
    state,

    -- json
    attributes,
    context,

    -- timestamps
    TIMESTAMP(last_changed) AS last_changed,
    TIMESTAMP(last_updated) AS last_updated,

FROM
  source
