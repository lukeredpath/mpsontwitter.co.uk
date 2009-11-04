get '/' do
  erb :index
end

post '/' do
  redirect '/yourmp'
end

get '/yourmp' do
  erb :yourmp
end
