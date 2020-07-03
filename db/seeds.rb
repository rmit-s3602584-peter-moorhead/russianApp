# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'roo'

xlsx = Roo::Spreadsheet.open('db/vocab.ods')
xlsx = Roo::OpenOffice.new('db/vocab.ods')
puts(xlsx.info)

puts(xlsx.sheets)

xlsx.default_sheet = "10,000 most common russian word"
puts(xlsx.row(1))
header = ["Russian", "English", "sentence"]
puts(xlsx.row(2))
puts(xlsx.row(3))

xlsx.each(russian: 'russian', english: 'english', sentence: 'sentence') do |hash|
    puts hash.inspect
    puts "---"
    Vocab.create!(russian: hash[:russian], english: hash[:english], sentence: hash[:sentence])
end