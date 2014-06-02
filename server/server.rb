require 'sinatra'

#Routes handling app


get '/' do
	"Hello World"
end

get '/turn_off' do
	system 'shutdown -s'	
	'shutting system down'
end

post '/volume:vol' do |v| 
	'turn volume up... (Windows?)'
end

get '/volume' do
	'turn volume down (Windows?)'
end

get '/volume/mute' do 
	system 'bin/nircmd.exe mutesysvolume 1'
	'muted'
end

get '/volume/unmute' do 
	system 'bin/nircmd.exe mutesysvolume 0'
	'unmuted'
end

