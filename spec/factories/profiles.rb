FactoryGirl.define do

  factory :profile do
    username "Name"
    tagline "Cool"
    aboutme "I am"
    genres "genre"


    factory :scifi do
       username "Alien"
       tagline "Another"
       aboutme "Planet"
       genres "Science Fiction"
     end

     factory :fantasy do
       username "Faun"
       tagline "Another"
       aboutme "Land"
       genres "Fantasy"
     end

     factory :humor do
       username "Bananapeel"
       tagline "whoops"
       aboutme "snicker"
       genres "humor"
     end
   end
end
