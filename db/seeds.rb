puts "Start of Seeding..."
Movie.destroy_all
50.times do
  params = {
    title: Faker::Book.unique.title,
    description: Faker::Lorem.paragraph,  
    rating: rand(0..10)
  }

  puts "Creating Movie: #{params}"
  movie = Movie.new(params)
  movie.save
end

puts "Seeding Over"



t.string "title"
t.string "description"
t.integer "rating"