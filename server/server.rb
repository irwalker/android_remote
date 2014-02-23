require 'sinatra'
require 'json'

#Routes handling app

class RemoteServer < Sinatra::Base

	get '/turn_off' do
		'shutting system down...'
		#system 'shutdown -P +0'
	end

	get '/volume_up' do
		'turn volume up... (Windows?)'
	end

	get '/volume_down' do
		'turn volume down (Windows?)'
	end

end