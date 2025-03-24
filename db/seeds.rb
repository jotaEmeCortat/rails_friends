# frozen_string_literal: true

require 'faker'

puts 'Cleaning database'

Friend.destroy_all

puts 'Creating 10 friends'
10.times do
  friend = Friend.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    address: Faker::Address.street_address
  )
  friend.save!
  puts "Created friend #{friend.first_name}"
end

puts "Finished! Creating #{Friend.count} friends"
