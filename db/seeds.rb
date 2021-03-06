# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end
p "3 topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
 ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
 cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
officia deserunt mollit anim id est laborum.",
    topic_id: Topic.last.id
  )
end
p "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end
p "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Porfolio title: #{portfolio_item}",
    subtitile: "Ruby on rails",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
 ut labore et dolore magna aliqua.",
    main_image: "https://via.placeholder.com/600x400",
    thumb_image: "https://via.placeholder.com/300x200"
  )
end
p "8 portfolio items created"

Portfolio.create!(
  title: "Porfolio title: eee",
  subtitile: "Angular",
  body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
 ut labore et dolore magna aliqua.",
  main_image: "https://via.placeholder.com/600x400",
  thumb_image: "https://via.placeholder.com/300x200"
)
p "Angular portfolio created"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Tchnology #{technology}"
  )
end
p "3 technologies created"