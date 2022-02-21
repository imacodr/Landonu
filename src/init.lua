--[[
Landon API wrapper for Luau @ imacodr
--]]

local Landonu = {}
Landonu.__index = Landonu

local fetchu = require(script.Packages.fetchu)

local BASE_URL = "https://flights.roavhub.org/openapi/flights"

function Landonu:GetFlights(apiKey: string)
    local URL = BASE_URL .. "/get"
    return fetchu.get(URL, {
            headers = {
                ["Authorization"] = apiKey
            }
    })
end

type FlightOptions = {
    flightNumber: string,
    aircraft: string,
    departure_airport: string,
    arrival_airport: string,
    game_url: string,
    date: string,
    time: string,
    roavhub_ping: boolean
}

function Landonu:CreateFlight(apiKey: string, flightOptions: FlightOptions)
    local URL = BASE_URL .. "/create"
    return fetchu.post(URL, {
            body = {apiKey = apiKey, flightOptions}
    })
end

function Landonu:DeleteFlight(apiKey: string, flightID: string)
    local URL = BASE_URL .. "/delete"
    return fetchu.post(URL, {
            body = {
                apiKey = apiKey,
                flightID = flightID
            }
    })
end

return Landonu
