# Appgen

Appgen is a gem that aids in the creation of arbitrarily complex rails applications by reading
a specification file of the requirements of the app and building it according to a certain set of rules.

## Usage

Appgen takes a json file that is structured like so:

    {
      "application_name": "Application Name",
      "custom_features": [
        {
          "feature_name": "Name",
          "fields": {
            "field_name": "field_type",
            "field_name": "field_type"
          }
          abilities: [
            "ability_name": {
              "option_1": "value",
              "option_2": "value"
            },
            "ability_name": {
              "option_1": "value",
              "option_2": "value"
            }
          ]
        }
      ]
    }

Specific examples of features and custom features are below.

### Application Features

#### User

TODO:
  The user module allows an application to support account creation with an email and password,
  logging in and logging out, and resetting passwords. When the user feature is set, other features and custom\_features
  can implement the following abilities:
    - user\_creatable
    - user\_sharable

### Custom Features

A custom feature is a database table that has a set of fields. It also implements basic CRUD operations.
