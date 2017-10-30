require "./charmed_polygons.rb"
class Menu

    def self.get_input
        gets.chomp
    end
    
    def self.show_menu
        question = "What should the magic number be? "
        puts question
        while true
            num = self.get_input.to_i
            if num > 1 && (num % 2 == 1)
                c = CharmedPolygon.new(num)
                puts c.show_polygon
                break
            else
                puts "Input was not an odd number greater than 0. #{question}"
            end
        end
    end
end

Menu.show_menu