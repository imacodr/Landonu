--[[
Landon API wrapper for Luau @ imacodr
--]]

local Landon = {}
Landon.__index = Landon

local fetchu = require(script.Packages.fetchu)

local BASE_URL = "https://flights.roavhub.org/openapi/flights"

function Landon:GetFlights(apiKey: string)
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

function Landon:CreateFlight(apiKey: string, flightOptions: FlightOptions)
    local URL = BASE_URL .. "/create"
    return fetchu.post(URL, {
            headers = {
                ["Authorization"] = apiKey
            },
            body = flightOptions
    })
end

function Landon:DeleteFlight(apiKey: string, flightID: string)
    local URL = BASE_URL .. "/delete"
    return fetchu.post(URL, {
            headers = {
                ["Authorization"] = apiKey
            },
            body = {
                flightID = flightID
            }
    })
end

return Landon
