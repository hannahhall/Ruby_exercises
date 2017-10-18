require 'yaml'

class Margaret
    attr_accessor :message
    attr_accessor :memories
    
    def initialize
        load
        @message = ARGV        
    end

    def load
        if File.exists?("memories.yml")
            @memories = YAML.load_file("memories.yml")
            begin
                unless @memories.has_key? "Margaret"
                    @memories["Margaret"] = Array.new
                end
            rescue
                @memories["Margaret"] = Array.new
            end
                
        else
            File.new("memories.yml", "w+")
            @memories = Hash.new
            @memories["Margaret"] = Array.new
        end
    end

    def save
        File.open("memories.yml", "r+") do |f|
            f.write(@memories.to_yaml)
        end
    end

    def add_memory
        puts @message

        @memories["Margaret"].push(@message)
        @memories["Margaret"].flatten!
        save
    end
end  

marg = Margaret.new
marg.add_memory