cities_lived_in = {
    michaela: ["Philadelphia", "Fort Collins", "Seattle"],
    mike: ["Denver", "Santa Fe", "Philadelphia", "Portland"],
    pamela: ["Lansing"],
    alex: ["Seattle", "Columbus", "Philadelphia", "Austin"]
}


# Problem #1: 
# Get a unique list of all of the cities that these humans have lived in  
# ["Philadelphia", "Fort Collins", "Seattle", "Denver", "Santa Fe", "Portland", "Lansing", "Columbus", "Austin"]

unique_cities = []
cities_lived_in.each_value do |cities|
    cities.each do |city|
        unique_cities << city
    end
end
unique_cities.uniq

p unique_cities

# or...

p cities_lived_in.values.flatten.uniq



# Problem #2: 
# Write code that iterates through the `cities_lived_in` hash, and returns a list of  
# names of the humans who've lived in Philadelphia.

# [:michaela, :mike, :alex]
# or
# ["Michaela", "Mike", "Alex"]


phil_people = []
cities_lived_in.each do |people_cities|
    if people_cities[1].include?("Philadelphia")
        phil_people << people_cities[0]
    end
end

p phil_people

#  Capitalized

phil_people_strings = []
cities_lived_in.each do |people_cities|
    if people_cities[1].include?("Philadelphia")
        phil_people_strings << people_cities[0].to_s.capitalize
    end
end

p phil_people_strings

#  or

philly_people = []
cities_lived_in.each do |key, values|
    philly_people << key if values.include?("Philadelphia")
end

p philly_people


# Problem #3: 
# Create a hash that has the city as a key, and the number of people that live in it as it's value: 

# {
#     "Philadelphia" => 3,
#     "Fort Collins" => 1,
#     "Seattle" =>2,
#     "Denver" => 1,
#     "Santa Fe" => 1,
#     "Portland" => 1,
#     "Lansing" => 1,
#     "Columbus => 1,
#     "Austin" => 1
# }

city_pop = Hash.new(0)

cities_lived_in.each do |_, values|
    values.each do |value|
        city_pop[value] += 1
    end
end

p city_pop