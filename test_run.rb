require "rack/handler/puma"
require "./not_sinatra"

get "/hello" do
  "Not Sinatra is minimal!!!"
end

get "/" do
  "Your params are #{params.inspect}"
end

post "/" do
  [200, {}, request.body]
end

Rack::Handler::Puma.run NotSinatra::Application, Port: 9292
