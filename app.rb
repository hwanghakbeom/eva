require 'rubygems'  
require 'sinatra'  

#facebook
APP_ID     = 541378595892777
APP_SECRET = '10222e30a7db20399a5a10b882b30bcf'
SITE_URL   = 'http://14.63.164.245'

SITE_TITLE = "Architect for the World"
set :bind, '0.0.0.0'
get '/' do
	@title = 'EVA'
		  erb :main
end

get '/facebooklogin' do
		# generate a new oauth object with your app data and your callback url
		session['oauth'] = Facebook::OAuth.new(APP_ID, APP_SECRET, SITE_URL + 'callback')
		session['fb_access_token'] = session['oauth'].get_app_access_token
		@graph = Koala::Facebook::API.new(session['oauth'].get_app_access_token)
		redirect session['oauth'].url_for_oauth_code(:permissions => "publish_stream")
end

get '/googlelogin' do
"hello google"
end

get '/secret' do
	"give me a guinness"
end