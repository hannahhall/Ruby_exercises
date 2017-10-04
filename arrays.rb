planetList = ["Mercury", "Mars"]
planetList.push("Jupiter")
planetList << "Saturn"
lastPlanets = ["Uranus", "Neptune"]
planetList.concat(lastPlanets)
planetList.insert(1, "Venus");
planetList.insert(2, "Earth");
planetList.push("Pluto")
rockyPlanets = planetList[0...4]

puts "all the planets"
for planet in planetList do
    puts planet
end

puts "\nRocky Planet"
for planet in rockyPlanets do
    puts planet
end