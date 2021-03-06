User.create!(
   email: "admin@test.com",
   password: "asdfasdf",
   password_confirmation: "asdfasdf",
   name: "Admin User",
   roles: "site_admin"
)

puts "1 Admin user created"
User.create!(
   email: "test@test.com",
   password: "asdfasdf",
   password_confirmation: "asdfasdf",
   name: "regular User",
)

puts "1 Regular user created"

3.times do |topic|
   Topic.create!(
      title: "Topic #{topic}"
      )
end

puts "3 topics created"

10.times do |blog|
   Blog.create!(
      title:"My Blog Post #{blog}",
      body: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32.",
      topic_id: Topic.last.id
      )
end 

puts "10 blog posts created"

5.times do |skill|
   Skill.create!(
      title: "Rails #{skill}",
      percent_utilized: 15
      )
   end
   
   puts "5 skills created"
   
   8.times do |portfolio_item|
      Portfolio.create!(
         title: "Portfolio title: #{portfolio_item}",
         subtitle: "Ruby on Rails",
         body: "Lorem ipsum dolor sit amet consectetur adipiscing elte, sed do eiusmod tempor incididunt",
         main_image: "http://via.placeholder.com/600x400",
         thumb_image: "http://via.placeholder.com/350x200"
         )
   end 
  
   
   1.times do |portfolio_item|
      Portfolio.create!(
         title: "Portfolio title: #{portfolio_item}",
         subtitle: "Angular",
         body: "Lorem ipsum dolor sit amet consectetur adipiscing elte, sed do eiusmod tempor incididunt",
         main_image: "http://via.placeholder.com/600x400",
         thumb_image: "http://via.placeholder.com/350x200"
         )
   end 
   puts "9 portfolio items created"
   
   3.times do |technology|
       Portfolio.last.technologies.create!(
         name: "Technology #{technology}"
         )
   end
   
   puts "3 technologies created"