require 'cassandra'

require 'column_family'
require 'config'
require 'operations'

module Cassandruby
  extend self
  extend Cassandruby::Operations

  def configure
    yield Config 
    setup! 
  end

  def setup!
    @client = Cassandra.new(Config.keyspace, "#{Config.host}:#{Config.port}")     
  end  

  def client
    @client
  end
end
