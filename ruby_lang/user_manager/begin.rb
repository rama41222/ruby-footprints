require 'pp'
require_relative 'user'

user = User.new "MK", 23
pp user

user.save
