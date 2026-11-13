# Sample articles are created only on the first run. Replace these with original writing.
if Article.count.zero?
  article1 = Article.create!(title: 'Welcome to The Sideline', section: 'Sports', body: 'The Sideline is my ET-718 Ruby on Rails blog project. It features posts, comments, a spotlight section, and a most-discussed list. Readers can join the conversation and explore different topics.', spotlight: true)
  article2 = Article.create!(title: 'Teamwork Is a Skill', section: 'School', body: 'Good teams communicate clearly, solve problems together, and stay focused when plans change. These same habits matter in classrooms and software projects.', spotlight: false)
  article3 = Article.create!(title: 'Building My First Web App', section: 'Technology', body: 'A working site takes more than a homepage. Rails connects the database, request handling, and interface so that articles can be created, edited, and discussed.', spotlight: false)
  article1.comments.create!(commenter: "Reader", body: "Great first post. Looking forward to more!")
end
