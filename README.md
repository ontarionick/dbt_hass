<p align="center">
    <a alt="License"
        href="https://github.com/fivetran/dbt_zendesk/blob/main/LICENSE">
        <img src="https://img.shields.io/badge/License-Apache%202.0-blue.svg" />
    </a>
    <a alt="dbt-core">
        <img src="https://img.shields.io/badge/dbt_Core™_version->=1.3.0_,<2.0.0-orange.svg" />
    </a>
    <a alt="Maintained?">
        <img src="https://img.shields.io/badge/Maintained%3F-yes-green.svg" />
    </a>
    <a alt="PRs">
        <img src="https://img.shields.io/badge/Contributions-welcome-blueviolet" />
    </a>
</p>



# DBT Package for processing Home Assistant Data

Using the [Google Pub/Sub](https://www.home-assistant.io/integrations/google_pubsub/) Home Assistant integration and following the instructions [here](https://github.com/timvancann/home-assistant-pubsub-cloud-function), you can land your Home Assistant entity event data in Google BigQuery. This alone is quite powerful, and you can build all sorts of alerting / dashboarding / modelling on top of this.

The purpose of this DBT package is to enrich the event data with useful models that do some of the often-repeated cleaning and processing steps needed to build more advanced features.
