require 'rest_client'

#Basic Test client for sinatra server.
class Client

	def Client.get_volume
		RestClient.get 'http://localhost:4567/volume'
	end

	def Client.set_volume(vol)
		RestClient.post 'http://localhost:4567/volume', :vol => vol
	end

	def Client.volume_up
		RestClient.get 'http://localhost:4567/volumeup'
	end

	def Client.volume_down
		RestClient.get 'http://localhost:4567/volumedown'
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
puts Client::set_volume(10000)
puts Client::mute
puts Client::volume_up