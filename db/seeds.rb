# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rails db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# require 'csv'
#
# Camper.transaction do
#   CSV.foreach(Rails.root + 'data/campers.csv',
#               headers: true,
#               header_converters: ->(h) { h.downcase.to_sym }) do |camper_row|
#     camper = camper_row.to_hash
#     Camper.create camper unless Camper.exists? camper
#   end
# end

require 'csv'

csv_text = File.read(Rails.root.join('data', 'campers.csv'))
csv = CSV.parse(csv_text, headers: true, encoding: 'ISO-8859-1')
csv.each do |row|
  c = Camper.new
  c.first_name = row['first_name']
  c.last_name = row['last_name']
  c.allergies = row['allergies']
  c.dob = row['dob']
  c.parent_name = row['parent_name']
  c.parent_email = row['parent_email']
  c.parent_phone = row['parent_phone']
  c.user_id = 1
  c.save
  puts "#{c.first_name}, #{c.last_name} saved"
end
