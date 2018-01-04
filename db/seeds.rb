require 'random_data'

# Create Posts
50.times do
  Post.create!(
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph
  )
end
posts = Post.all

# Create Comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

# Create Unique Post
puts "#{Post.count}"
unique_post = Post.find_or_create_by!(
  title: "Unique post",
  body: "Unique post's body"
)
puts "#{Post.count}"

#Create Unique Comments
puts "#{Comment.count}"
Comment.find_or_create_by!(
  post: unique_post,
  body: "Unique comment"
)
puts "#{Comment.count}"

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
