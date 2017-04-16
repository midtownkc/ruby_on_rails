require 'mongo'

Mongo::Logger.logger.level = ::Logger::INFO
db = Mongo::Client.new('mongodb://localhost:27017')
db = db.use('test')

puts "This is database: #{db.database.name}"
puts "Check out the columns: #{db.database.collection_names}"

puts "What city do you want to goto?"
choice = gets.chomp
puts "Too bad, I don't give a fuck about that."
puts "We're going to #{db[:zips].find.first}"
