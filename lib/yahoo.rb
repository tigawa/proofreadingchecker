module Yahoo
	class Proofreading

		require 'nokogiri'

		def self.make(sentence)

			conn = Faraday.new(:url => 'http://jlp.yahooapis.jp') do |builder|
				builder.request :url_encoded
				builder.response :logger
				builder.adapter :net_http
			end

			res = conn.get '/KouseiService/V1/kousei', {
				:appid => "dj0zaiZpPTFlV1FCTkFsTmJ2TCZzPWNvbnN1bWVyc2VjcmV0Jng9NDI-",
				:sentence => sentence,
			}
			Nokogiri::XML(res.body)
		end

	end
end