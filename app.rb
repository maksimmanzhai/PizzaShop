#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:pizzashop.db"

class Product < ActiveRecord::Base

end

class Order < ActiveRecord::Base
	validates :name, presence: true, length: { minimum: 3}
	validates :phone, presence: true, length: { minimum: 3}
end

get '/' do
	@products = Product.all
	erb :index
end

get '/about' do
	erb :about
end

get '/cart' do
	@c = Order.new
	erb :cart
end

post '/cart' do
	@c = Order.new params[:order]
	if @c.save
		erb "Спасибо за ваш заказ!"
	else
		@error = @c.errors.full_messages.first
		erb :cart
	end

end