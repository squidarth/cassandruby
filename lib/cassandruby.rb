require './column_family'
require './config'

module Cassandruby
  extend self

  def configure
    yield Config 
  end
end
