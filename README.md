# Landonu

API Wrapper for Landon with Luau

# Install

_with Roblox Marketplace_

https://www.roblox.com/library/8895872898/Landonu

_with Wally_

`Landonu = "imacodr/landon@1.0.0"`

_with Roarn_

`roarn install landonu`

_with GitHub_

https://github.com/imacodr/Landon/releases

# Usage

`Landonu:GetFlight(apiKey: string)`

```lua
local Landonu = require(path/to/landon)

Landonu:GetFlight("testkey")
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
