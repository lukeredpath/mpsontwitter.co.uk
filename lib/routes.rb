get '/about' do
  haml "%p mpsontwitter.co.uk brought to you by lukeredpath.co.uk"
end

get '/' do
  haml :index
end