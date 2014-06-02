require 'rest_client'

class Client

	def Client.get_volume
		RestClient.get 'http://localhost:4567/volume'
	end

	def Client.set_volume(vol)
		RestClient.post 'http://localhost:4567/volume', {:params => {:vol => "#{vol}"}}
	end

	def Client.mute
		RestClient.get 'http://localhost:4567/volume/mute'
	end

	def Client.unmute
		RestClient.get 'http://localhost:4567/volume/unmute'
	end

end

puts Client::get_volume
puts Client::mute
puts Client::unmute
puts Client::mute
#Client::set_volume(1000)