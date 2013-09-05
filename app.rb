require 'rubygems'  
require 'sinatra'  
require 'koala'


include Koala

enable :sessions

#facebook
APP_ID     = 541378595892777
APP_SECRET = '10222e30a7db20399a5a10b882b30bcf'
SITE_URL   = 'http://14.63.164.245/'

SITE_TITLE = "Architect for the World"
set :bind, '0.0.0.0'
@myfirstphoto = nil

get '/' do
	@title = 'EVA'
	unless session['access_token'] == nil
	graph = Koala::Facebook::API.new(session['access_token'])

	profile = graph.get_object("me")
	myuid = profile["id"]
	session['id'] = myuid
	sess = session[:id]
	@myfirstphoto = 'http://res.cloudinary.com/dobny9ati/image/facebook/w_70,h_70,c_fill/'+profile["id"]+'.jpg'
	end

	erb :main
end

get '/callback' do
		session['access_token'] = session['oauth'].get_access_token(params[:code])
		redirect '/login'
end

get '/admin' do
		# generate a new oauth object with your app data and your callback url
		session['oauth'] = Facebook::OAuth.new(APP_ID, APP_SECRET, SITE_URL + 'callback')
		session['fb_access_token'] = session['oauth'].get_app_access_token
		@graph = Koala::Facebook::API.new(session['oauth'].get_app_access_token)
		redirect session['oauth'].url_for_oauth_code(:permissions => "publish_stream")
end

get '/login' do
	graph = Koala::Facebook::API.new(session['access_token'])

	profile = graph.get_object("me")
	:myuid = profile["id"]
	session['id'] = :myuid
	sess = session[:id]

	redirect '/:myuid'
	# "url" => 'http://res.cloudinary.com/dobny9ati/image/facebook/w_405,h_480,c_fill/'+url['user_userid'].to_s+'.jpg'
end
get '/googlelogin' do
"hello google"
end

get '/:myuid' do
	"give me a guinness"
end