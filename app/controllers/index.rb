get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/creator' do

  @creator = Creator.new
  erb :'/users/creators'
end


get '/voter' do

  @voter = Voter.new
  erb :'/users/voters'
end

post '/creator/login' do
  @creator = Creator.authenticate(params[:name],params[:password])
  if @creator
    session[:name] = @creator[:name]
    erb :'/survey/create'
  else
    redirect '/'
  end
end

post '/creator/signup' do
  @creator = Creator.create(name: params["name"], password: params["password"])
  session[:name] = @creator[:name]
  redirect '/survey/create'
end

get '/survey/create' do
  erb :'/survey/create'
end

post '/survey/create' do
  redirect "/"
  end

post '/voter/login' do
  @voter = Voter.authenticate(params[:name],params[:password])
  if @creator
    session[:name] = @voter[:name]
    erb :'/survey/vote'
  else
    redirect '/'
  end
end

post '/voter/signup' do
  @voter = Voter.create(name: params["name"], password: params["password"])
    session[:name] = @voter[:name]
    erb :'/survey/vote'
end