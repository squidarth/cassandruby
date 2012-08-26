require './column_family'
require './config.rb'

module Cassandruby
  def configure
    yield Config 
  end
end
