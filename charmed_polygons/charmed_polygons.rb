require 'date'

class CharmedPolygon
    def initialize(num)
        @num = num
        @container = create_polygon(num)
    end
    
    def create_polygon(num)
        container = Array.new(num)
        (0...num).each do |n| 
            container[n] = Array.new(num)
        end
        counter = 1
        index = num - 1
        x = 0 
        y = (index)/2
        while (counter <= num ** 2)
            if !(container[x][y].nil?)
                x = (x + 2) > index ? 0 : x + 2
                y -= 1
            end
            container[x][y] = counter
            if (x == 0 && y == index)
                x += 1
            else
                x = x == 0 ? index : x - 1
                y = y == index ? 0 : y + 1
            end
            counter += 1
        end
        container
    end

    def show_polygon
        border = String.new("+" + ("-" * ((@num * 5) - 1)) + "+\n")
        output = border
        @container.each do |inner|
            row = "| "
            inner.each do |num|
                row += '%2s' % num + " | "
            end
            output += row + "\n" + border
        end
        output
    end
end

