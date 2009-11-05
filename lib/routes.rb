get '/' do
  erb :index
end

post '/' do
  @lookup = MPLookup.new($TWFY_API_KEY)
  if @mp = @lookup.lookup(params[:postcode])
    @mp.check_twitter_status
    erb :yourmp
  else
    erb :index
  end
end
