WITH 

events AS  (

    SELECT * FROM {{ ref( 'stg_hass__events' )}}

)

SELECT
    -- ids
    events.entity_id,

    -- strings
    events.entity_domain,
    events.entity_name,
    events.friendly_name,
    events.state,

    -- json
    events.attributes,
    events.context,

    -- timestamps
    events.last_changed,
    events.last_updated AS valid_from,
    LEAD(events.last_updated) OVER (
        PARTITION BY events.entity_id
        ORDER BY events.last_updated
    ) AS valid_to

FROM
    events
