require 'yaml'


class Mary
    attr_accessor :message
    attr_accessor :memories
    
    def initialize
        load
        @message = ARGV
        puts @memories
        
    end

    def load
        if File.exists?("memories.yml")
            @memories = YAML.load_file("memories.yml")
            begin
                unless @memories.has_key? "Mary"
                    @memories["Mary"] = Array.new
                end
            rescue
                @memories["Mary"] = Array.new
            end
                
        else
            File.new("memories.yml", "w+")
            @memories = Hash.new
            @memories["Mary"] = Array.new
        end
    end

    def save
        File.open("memories.yml", "r+") do |f|
            f.write(@memories.to_yaml)
        end
    end

    def add_memory
        puts @message
        @memories["Mary"].push(@message)
        @memories["Mary"].flatten!
        save
    end
end  

marg = Mary.new
marg.add_memory