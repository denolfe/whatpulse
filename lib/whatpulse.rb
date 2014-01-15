require 'whatpulse/version'
require 'httparty'
require 'json'

module Whatpulse

	class Client

		attr_accessor :user

	 	@@baseUserUri = "http://api.whatpulse.org/user.php"
	 	@@basePulseUri = "http://api.whatpulse.org/pulses.php"

		def initialize(user)
			@user = user 	
		end

		def getUserData
			apiURL = "#{@@baseUserUri}?user=#{@user}&formatted=yes&format=json"	
			return makeCall(apiURL)
		end

	 	def getPulses
	 		apiURL = "#{@@basePulseUri}?user=#{@user}&formatted=yes&format=json"
	 		return makeCall(apiURL)
	 	end

		def makeCall(fullUrl)
			return JSON.parse(HTTParty.get(fullUrl, :timeout => 10).body)
		end
	end
end