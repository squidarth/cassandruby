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
end

model = TestModel.new
binding.pry
model.name = "John"
binding.pry
model.save
binding.pry
