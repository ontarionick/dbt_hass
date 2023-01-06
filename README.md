# DBT Package for processing Home Assistant Data

Using the [Google Pub/Sub](https://www.home-assistant.io/integrations/google_pubsub/) Home Assistant integration and following the instructions [here](https://github.com/timvancann/home-assistant-pubsub-cloud-function), you can land your Home Assistant entity event data in Google BigQuery. This alone is quite powerful, and you can build all sorts of alerting / dashboarding / modelling on top of this.

The purpose of this DBT package is to enrich the event data with useful models that do some of the often-repeated cleaning and processing steps needed to build more advanced features.