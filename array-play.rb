require 'erb'

our_class = ["Michael", "Luis", "Zachary", "Keith", "Chris", "Brent", "Jon"]

short_names = []

our_class.each do |name|
  short_names << name if name.length < 5
end

sentence = "Ruby is actually kind of fun once you get used to it."
sentence_array = []
four_letters = []

sentence_array = sentence.split(" ")

sentence_array.each do |word|
  four_letters << word if word.length == 4
end

movies = []
movies << {
  title: "Forest Gump",
  budget: 55,
  stars: ["Tom Hanks"]
}
movies << {
  title: "Star Wars",
  budget: 11,
  stars: ["Mark Hamill", "Harrison Ford"]
}
movies << {
  title: "Batman Begins",
  budget: 150,
  stars: ["Christian Bale", "Liam Neeson", "Michael Caine"]
}
movies << {
  title: "Titanic",
  budget: 200,
  stars: ["Kate Winslet", "Leonardo DiCaprio"]
}
movies << {
  title: "Inception",
  budget: 160,
  stars: ["Leonardo DiCaprio", "JGL"]
}

smaller_budget = movies.select{ |movie| movie [:budget] <= 100}.collect{ |movie| movie[:title]}

leo_flicks = movies.select{ |movie| movie [:stars].include? "Leonardo DiCaprio"}.collect{ |movie| movie[:title]}

new_file = File.open("./index.html", "w+")
new_file << ERB.new(File.read("index.html.erb")).result(binding)
new_file.close
