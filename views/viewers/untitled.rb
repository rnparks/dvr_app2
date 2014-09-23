require 'rubygems'
require 'bcrypt'
require 'haml'
require 'sinatra'


password_salt = BCrypt::Engine.generate_salt
password_hash = BCrypt::Engine.hash_secret(params[:password], password_salt)

puts password_salt
