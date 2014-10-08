require 'pp'
require 'sinatra'
require 'mongo'
require 'nokogiri'
require 'open-uri'
require 'json'
include Mongo

set :port, 7777
set :environment, :production

get '/' do
  '<ul>
      <li><a href="/aws">AWS</a></li>
      <li><a href="/rackspace">Racksapce</a></li>
      <li><a href="/google">Google</a></li>
      <li><a href="/linode">Linode</a></li>
    </ul>'
end

get '/aws' do
  url = 'http://a0.awsstatic.com/pricing/1/ec2/linux-od.min.js'
  buffer = open(url, "UserAgent" => "Ruby-Wget").read
  result = JSON.parse(buffer)
  pp result
end
get '/rackspace' do
  "rackspace"
end
get '/google' do
  "google"
end
get '/linode' do
  "linode"
end
