# Landonu

API Wrapper for Landon with Luau

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
