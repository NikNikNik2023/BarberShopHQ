#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

# Подключение к базе данных, нужно запомнить
set :database, "sqlite3:barbershop.db"

class Client < ActiveRecord::Base
end

class Barber < ActiveRecord::Base
end

get '/' do
	@barbers = Barber.all
	erb :index
end