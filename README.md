![banner](./assets/banner.png)

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
Landonu = "imacodr/landon@1.0.4"
```

_with Roarn_

```sh-session
roarn install landonu
```

_with GitHub_

https://github.com/imacodr/Landon/releases

# Usage

First you will need to create a Landonu object. Landonu now follows OOP!

`local airline = Landonu.new(apiKey: string)` = self (on the docs)

`self:GetFlights()`

```lua
local Landonu = require(path/to/landon)

local airline = Landonu.new(apiKey: string)

airline:GetFlights()
```

`self:CreateFlight({ flightNumber: string, aircraft: string, departure_airport: string, arrival_airport: string, game_url: string, date: string, time: string, roavhub_ping: boolean })`

```lua
local Landonu = require(path/to/landon)

local airline = Landonu.new(apiKey: string)

airline:CreateFlight({
    flightnumber = "test",
    aircraft = "test",
    departure_airport = "test",
    arrival_airport = "testu",
    game_url = "https://roblox.com",
    date = "today",
    time = "8 PM",
    roavhub_ping: true
    }
)
```

`self:DeleteFlight(flightID: string)`

```lua
local Landonu = require(path/to/landon)

local airline = Landonu.new(apiKey: string)

airline:DeleteFlight("testFlightIdThatGenerated")
```
