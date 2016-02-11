# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Book.destroy_all
Reviewer.destroy_all

Book.create! [
	{ name: "Eloquent ruby", author: "Russ Olsen"},
	{ name: "Begin ruby", author: "John Joe"},
	{ name: "Metaprog", author: "JJ L"},
	{ name: "Design pattern", author: "Russ Olsen"},
	{ name: "Ruby language", author: "David Flanagan"}
]

100.times { |index| Book.create! name: "Book #{index}", author: "Author #{index}"}

eloquent = Book.find_by name: "Eloquent ruby"
eloquent.notes.create! [
	{ title: "Wow", note: "Great book to read"},
	{ title: "Funny", note: "Doesn't put you to sleep"}
]

reviewer = Reviewer.create! [
	{ name: "Joe", password: "abc123"},
	{ name: "Jim", password: "123abc"}
]

Book.all.each do |book|
	book.reviewer = reviewer.sample
	book.save!
end
