require 'pry'
require 'rspec'
require 'capybara/rspec'

require_relative '../server.rb'
require_relative '../models/player.rb'
require_relative '../models/computer.rb'


set :environment, :test

Capybara.app = Sinatra::Application
