require 'rubygems'  
require 'sinatra'  

SITE_TITLE = "Architect for the World"

get '/' do
	@title = 'EVA'
		  erb :main
end
