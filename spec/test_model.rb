require 'cassandruby'
require 'pry'

Cassandruby.configure do |config|
  config.host = "localhost"
  config.port = "7199"
  config.keyspace = "mytestapp"
end

class TestModel
  include Cassandruby::ColumnFamily

  field :name
  binding.pry
  def initialize
    @name = "Test Model"
  end
end

TestModel.new.name
