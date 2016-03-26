### CurrentTemperature

A simple gem. It will return the current temperature in degrees Fahrenheit using Weather Underground's API.


## Requirements
A WU api key is necessary to use this. Set the api key as an environment var, `WUNDERGROUND_API_KEY="you_api_key"`. If you omit this, the gem will fallback to the api key on [WU's documentation page](https://www.wunderground.com/weather/api), which comes with unknown side effects.

## Usage
`CurrentTemperature.at_location(94110)`

`CurrentTemperature.at_location("San Francisco, Ca")`
