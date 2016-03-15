require "sinatra"
require_relative "models/player.rb"
require_relative "models/computer.rb"

use Rack::Session::Cookie, {
  secret: "keep_it_secret_keep_it_safe"
}

get '/' do
  if session[:visit_count].nil?
    session[:player] = Player.new
    session[:computer] = Computer.new
    session[:visit_count] = 1
  else
    session[:visit_count] += 1
  end
  @player = session[:player]
  @computer = session[:computer]
  erb :home
end

get '/reset' do
  session.clear
  redirect '/'
end

post '/choose' do
  session[:player].choice = params[:choice]
  session[:computer].choose

  if session[:computer].choice == session[:player].choice
    session[:tie] = true
  elsif session[:computer].choice == "Scissors" && session[:player].choice == "Rock"
    session[:player].score += 1
  elsif session[:computer].choice == "Rock" && session[:player].choice == "Scissors"
    session[:computer].score += 1
  elsif session[:computer].choice == "Paper" && session[:player].choice == "Scissors"
    session[:player].score += 1
  elsif session[:computer].choice == "Scissors" && session[:player].choice == "Paper"
    session[:computer].score += 1
  elsif session[:computer].choice == "Rock" && session[:player].choice == "Paper"
    session[:player].score += 1
  else session[:computer].choice == "Paper" && session[:player].choice == "Rock"
    session[:computer].score += 1
  end

  if (session[:computer].score == 2 && session[:player].score == 0) || session[:computer].score == 3
    session[:computer].win = true
  elsif (session[:player].score == 2 && session[:computer].score == 0) || session[:player].score == 3
    session[:player].win = true
  end

  redirect '/'
end
