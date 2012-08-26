require 'cassandruby/column_family'
require 'cassandruby/config'

module Cassandruby
  extend self

  def configure
    yield Config 
  end
end
