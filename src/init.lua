--[[
Landon API wrapper for Luau @ imacodr
--]]

local Landonu = {}
Landonu.__index = Landonu

local fetchu = require(script.Packages.fetchu)

local BASE_URL = "https://flights.roavhub.org/openapi/flights"

function Landonu.new(apiKey: string)
	local self = setmetatable({}, Landonu)
	self.apiKey = apiKey
	return self
end

function Landonu:GetFlights()
	local URL = BASE_URL .. "/get"
	return fetchu.get(URL, {
		headers = {
			["Authorization"] = self.apiKey,
		},
	})
end
type FlightOptions = {
	flightnumber: string,
	aircraft: string,
	departure_airport: string,
	arrival_airport: string,
	game_url: string,
	date: string,
	time: string,
	roavhub_ping: boolean,
}

function Landonu:CreateFlight(flightOptions: FlightOptions)
	local URL = BASE_URL .. "/create"

	local Body = {}

	local function assign(t)
		for k, v in pairs(t) do
			Body[k] = v
		end
	end
	assign(flightOptions)

	local response = fetchu.post(URL, {
		body = Body,
		headers = {
			["Authorization"] = self.apiKey,
		},
		tablefy = true,
	})

	return response.details.flightID
end

function Landonu:DeleteFlight(flightID: string)
	local URL = BASE_URL .. "/delete"
	return fetchu.post(URL, {
		headers = {
			["Authorization"] = self.apiKey,
		},
		body = {
			flightID = flightID,
		},
	})
end

return Landonu
