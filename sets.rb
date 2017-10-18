require 'set'

showroom = Set.new ['camero', 'wrangler', 'rouge', 'juke']

puts showroom.length

showroom.add 'camero'

puts showroom.inspect

showroom2 = Set.new ['mustang', 'challenger']
showroom.merge(showroom2)

puts showroom.inspect

showroom.delete 'mustang'

puts showroom.inspect


class Animal
    def noise=(noise)
        @noise = noise
    end

    def noise
        @noise
    end
end

animal = Animal.new
animal.noise = 'bah'