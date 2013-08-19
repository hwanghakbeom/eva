require 'rubygems'  
require 'sinatra'  

SITE_TITLE = "Architect for the World"

get '/' do
	@title = 'EVA'
		  erb :main
end

get '/facebooklogin' do
"Heelo facebook"
end

get '/googlelogin' do
"hello google"
end

