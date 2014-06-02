require 'sinatra'

#Test
get '/' do
	"Hello World"
end

#Turn PC off
get '/turn_off' do
	system 'shutdown -s'	
	'shutting system down'
end

#Turn the volume up by a set interval
get '/volumeup' do 
	system 'bin/nircmd.exe changesysvolume 5000'
	'volume up'
end

#Turn volume down by a set interval
get '/volumedown' do 
	system 'bin/nircmd.exe changesysvolume -5000'
	'volume down'
end

#Set the volume to a value
post '/volume' do
	volume = params[:vol]	
	system "bin/nircmd.exe setsysvolume #{volume}"
	"set volume to #{volume}"	
end

#Return the current volume
get '/volume' do
	'turn volume down (Windows?)'
end

#Mute volume
get '/volume/mute' do 
	system 'bin/nircmd.exe mutesysvolume 1'
	'muted'
end

#Unmute volume
get '/volume/unmute' do 
	system 'bin/nircmd.exe mutesysvolume 0'
	'unmuted'
end

#send key press to the system
post '/keypress' do 
	key = params[:key]
	system "bin/nircmd.exe sendkeypress #{key}"
	"entered key #{key}"
end
