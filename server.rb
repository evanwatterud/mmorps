require "sinatra"

use Rack::Session::Cookie, {
  secret: "keep_it_secret_keep_it_safe"
}

get '/' do
  if session[:visit_count].nil?
    session[:player] = Player.new
    session[:computer] = Computer.new
  else
    session[:visit_count] += 1
  end
  erb :home
end
