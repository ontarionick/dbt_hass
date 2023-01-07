WITH
states AS  (
    SELECT * FROM {{ ref( 'entity_states' )}}
)

SELECT
    -- strings
    friendly_name AS thermostat_name,
    INITCAP(JSON_VALUE(states.attributes, "$.hvac_action")) AS hvac_action,
    JSON_VALUE(states.attributes, "$.climate_mode") AS climate_mode,

    -- numerics
    PARSE_NUMERIC(
        JSON_VALUE(states.attributes, "$.temperature")
    ) AS target_temperature,
    PARSE_NUMERIC(
        JSON_VALUE(states.attributes, "$.current_humidity")
    ) AS current_humidity,
    PARSE_NUMERIC(
        JSON_VALUE(states.attributes, "$.current_temperature")
    ) AS current_temperature,

    -- timestamps
    valid_from,
    valid_to
FROM
    states
WHERE
    entity_domain = 'climate'
