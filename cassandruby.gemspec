Gem::Specification.new do |s|
  s.name                = 'cassandruby'
  s.version             = '0.0.0'
  s.date                = '2012-08-25'
  s.summary             = 'ORM wrapper for Cassandra'
  s.authors             = ["Sidharth Shanker"]
  s.email               = "sid@gumroad.com"
  s.files               = ["lib/cassandruby.rb"]

  s.files               = Dir.glob("lib/**/*")
  s.require_path        = 'lib'
end
