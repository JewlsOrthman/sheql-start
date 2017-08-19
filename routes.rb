get '/home' do
  @rooms = Room.all
  if no_authentication?
    erb :"home"
  else
    "Hi, #{session[:name]}.  <img style='width:60px; border-radius:50%;' src='#{session[:picture]}' >"
  end
end

get '/home' do
  "Hello!"
  #https://sketch.io/render/sk-88620aa2ad609402772b3aaa69d0d65a.jpeg
end

get '/room1' do
  erb:room1
end

get '/loginnao' do
  erb:loginnao
end

def current_roomone
  Room.find(1)
end

get "/test" do
  @user = current_user
end

def current_user
  User.find(1)
end
