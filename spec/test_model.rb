require 'cassandruby'
require 'pry'

binding.pry
Cassandruby.configure do |config|
  config.host = "localhost"
  config.port = "7199"
  config.keyspace = "mytestapp"
end

binding.pry
class TestModel
  include Cassandruby::ColumnFamily

  def initialize
    @name = "Test Model"
  end
end

TestModel.new.name
