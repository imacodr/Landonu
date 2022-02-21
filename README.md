![banner](./assets/banner.png)
_no i totally didnt fork the Wii U logo_

# About

The Landon OpenAPI Wrapper makes it easy for developers to interact with our Roblox Flight Planner System.

- Simple and easy to use
- 100% coverage of the Landon OpenAPI

With that its now been brought to Luau.

# Install

_with Roblox Marketplace_

https://www.roblox.com/library/8895872898/Landonu

_with Wally_

```toml
Landonu = "imacodr/landon@1.0.0"
```

_with Roarn_

```sh-session
roarn install landonu
```

_with GitHub_

https://github.com/imacodr/Landon/releases

# Usage

`Landonu:GetFlights(apiKey: string)` _Currently not working. Waiting an update on the API for it to work once again_

```lua
local Landonu = require(path/to/landon)

Landonu:GetFlights("testkey")
```

`Landonu:CreateFlight(apiKey: string, { flightNumber: string, aircraft: string, departure_airport: string, arrival_airport: string, game_url: string, date: string, time: string, roavhub_ping: boolean })`

```lua
local Landonu = require(path/to/landon)

Landonu:CreateFlight("testkey", {
    flightNumber = "test",
    aircraft = "test",
    departure_airport = "test",
    arrival_airport = "testu",
    game_url = "https://",
    date = "today",
    time = "8 PM",
    roavhub_ping: true
    }
)
```

`Landonu:DeleteFlight(apiKey: string, flightID: string)`

```lua
local Landonu = require(path/to/landon)

Landonu:DeleteFlight("testkey", "testFlightIdThatGenerated")
```
