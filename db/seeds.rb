require "faker"
require "open-uri"

words = ["Adventurous","Affectionate","Artistic","Compassionate","Courageous","Curious","Dependable","Easygoing","Energetic","Forgiving","Funny","Generous","Genuine","Honest","Independent","Loyal","Loving","Modest","Motivated","Optimistic","Outgoing","Passionate","Patient","Responsible","Sensitive","Sincere","Sympathetic","Thoughtful","Trustworthy","Understanding","Vibrant","Warmhearted"]

body_disposal = ["Cremation", "Aquamation", "Green Burial", "Traditional Burial"]

memory = ["My son was three. We were on holiday in an outside restaurant with a huge table of family members. He got bored and restless at the table so I took him for a walk, we ended up lying on the grass looking at the stars just chatting. At one point we saw a shooting star but the best part was just being together chatting and feeling so close.", "I remember sitting in the park, it was mid-afternoon somewhen in July. We'd finished exams and everyone was drinking and celebrating. We had no idea what we were all going to do next, but for that moment we were just happy to be alive. For one fleeting moment there was no worries, no aggro, no sadness. Just a bunch of people happy to be alive, there and then"]

pus = ["Body Donation", "Organ Donation"]

assets = ["< $500k", "$500k - 1$M", "$1M - $5M", "> $5M"]

puts 'This is the end'
Funeral.destroy_all
puts 'Beautiful Friend'
Will.destroy_all
puts "The End"
User.destroy_all

10.times do
  user = User.create!(
    name: Faker::Name.name,
    phone: Faker::PhoneNumber.cell_phone,
    address: "#{Faker::Address.street_name}, #{Faker::Address.city}",
    email: Faker::Internet.email,
    password: "123123",
    marital_status: Faker::Demographic.marital_status,
    age: rand(25..50),
    children: (0..4).to_a.sample,
    pets: (0..4).to_a.sample,
  )
  Funeral.create!(
    user_id: user.id,
    music: Faker::Music::RockBand.song,
    no_invite: ["No body", "#{Faker::Name.name} - #{Faker::Relationship.familial}"].sample,
    sending_message: Faker::Quote.famous_last_words,
    arrangement: body_disposal.sample,
    representative: "#{Faker::Name.name}, #{Faker::Relationship.familial}",
    ten_words: words.sample(10),
    memory: memory.sample,
    unaware_state: pus.sample
  )
  Will.create!(
    executor_id: user.id,
    user_id: user.id,
    assets_range: assets.sample,
    primary_beneficiaries: Faker::Name.name,
    residuary: Faker::Name.name,
    donation: "The injured #{Faker::Creature::Animal.name} Foundation"
  )
  # Executor.create!(
  #   user_id: user.id,
  #   name: Faker::Name.name,
  #   email: Faker::Internet.email,
  #   address: "#{Faker::Address.street_name}, #{Faker::Address.city}",
  #   phone: Faker::PhoneNumber.cell_phone
  # )
end

puts "created #{User.count} users, #{Funeral.count} funerals, #{Will.count} wills. Goodnight."

# puts "and #{Executor.count} executors to carry out their wishes. Good luck."

# puts "Creating the alpha and the omega"
# User.create!(
#   name: "Tim Cope",
#   phone: "0898-505050",
#   address: "#{Faker::Address.street_name}, #{Faker::Address.city}",
#   email: "tim@wille.net",
#   password: "123123",
#   marital_status: Faker::Demographic.marital_status,
#   age: rand(25..50),
#   children: (0..4).to_a.sample,
#   pets: (0..4).to_a.sample
# )
# puts "####"
# puts User.last.name
# puts User.last.email
# puts "123123"
# puts "####"
# puts "This be the User for pitch"

words.each do |word|
  ActsAsTaggableOn::Tag.new(name: word).save
end
