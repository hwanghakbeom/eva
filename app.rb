require 'rubygems'  
require 'sinatra'  
require 'koala'
require 'pg'
require 'data_mapper'
require 'time'
require File.join(File.dirname(__FILE__), "urllist.rb")

include Koala

enable :sessions

#facebook
APP_ID     = 541378595892777
APP_SECRET = '10222e30a7db20399a5a10b882b30bcf'
SITE_URL   = 'http://14.63.164.245/'

url = 'postgres://mpgapjicswidul:Kc53rL4M4jbRm1CgRg5t9onrAr@ec2-54-225-105-169.compute-1.amazonaws.com:5432/d9698rcak6lu5h'
DataMapper.setup(:default, url)

class Account
	include DataMapper::Resource
	property :accountid, Text ,:key =>true
	property :password, Text
	property :updated_at, DateTime
	has n, :users
	has n, :relations
	validates_uniqueness_of :accountid, :message => "There's already a registration of that ID"
end

class User
	include DataMapper::Resource
	belongs_to :account
	property :userid, Text , :key =>true
	property :name, Text
	property :sex, Text
	has n, :photos
	validates_uniqueness_of :userid, :message => "There's already a registration of that ID"
end

class Photo
	include DataMapper::Resource
	belongs_to :user
	property :id, Serial
	property :url , Text
end

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

	urlclass = Memberurl.new
	@photoaddress = urlclass.geturl
	p @photoaddress
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
	session['id'] = profile["id"]
	session['name'] = profile["name"]
	sess = session[:id]

	redirect '/edit_account'
	# "url" => 'http://res.cloudinary.com/dobny9ati/image/facebook/w_405,h_480,c_fill/'+url['user_userid'].to_s+'.jpg'
end

get '/edit_account' do
	session['id']
	@yourname = session['name'].to_s
	erb :editaccount
end