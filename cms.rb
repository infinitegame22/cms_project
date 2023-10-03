require "sinatra"
require "sinatra/reloader"
require "tilt/erubis"
require "sinatra/content_for"

configure do
  use Rack::Session::Cookie, :key=>"rack.session", :path=>"/" 
  set :session_secret, SecureRandom.hex(32)
  set :erb, :escape_html => true
end

get "/" do
  "Getting started."
end