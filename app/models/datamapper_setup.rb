require 'data_mapper'
require 'dm-postgres-adapter'
require_relative './space'
require_relative './booking'
require_relative 'user'

# DataMapper::Logger.new($stdout, :debug)
DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bnb_#{ENV["RACK_ENV"]}")
DataMapper.finalize
DataMapper.auto_upgrade!
