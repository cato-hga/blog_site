# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all

posts = Post.create!([{title: Faker::Name.name, body: "khaskahasahkjsah", created_at: 1.year.ago},
                      {title: "Learning Spanish", body: "khaskahasahkjsah", created_at: 1.year.ago},
                      {title: Faker::Name.name, body: "khaskahasahkjsah", created_at: 1.year.ago},
                      {title: "TESTljsjlsls", body: "In the last decade, while phone cameras have gone from shooting tiny noisy pictures to producing DSLR-level quality shots, webcams have coasted on the mediocre lane. As distributed or remote work became more common, we’ve never relied on webcams more yet they’re just as bad as they were ten years ago. The Logitech C920 (~$50), still The Wirecutter’s top pick in 2020, came out in January 2012 — the year of the chamfered-edged iPhone 5.", created_at: Date.today}
                    ])
