3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
    )
end

puts "3 Topics created"

10.times do |blog|
  Blog.create!(
      title: "My blog post #{blog}",
      body: "Hey",
      topic_id: Topic.last.id
    )
end

puts '10 blog posts created'

5.times do |skill|
  Skill.create!(
      title: "Rails #{skill}",
      percent_utilized: 15
    )
end

puts '5 skills created'

8.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio_item}",
        subtitle: "Ruby on Rails",
        body: "Hey.",
        main_image: "http://placehold.it/600x400",
        thumb_image: "http://placehold.it/350x200"
      )
end

1.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio_item}",
        subtitle: "Angular",
        body: "Oh hi.",
        main_image: "http://placehold.it/600x400",
        thumb_image: "http://placehold.it/350x200"
      )
end

puts '9 portfolio items created'

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}",
    )
end
  
puts '3 technologies created'