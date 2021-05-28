class Map

    def initialize
        @map = []
    end

    def set(key,value)
        if @map.none? { |el| el.first == key }
            @map << [key,value] 
        else
            @map.each do |el|
                if el.first == key
                    el.pop
                    el << value
                end
            end
        end
    end

    def get(key)
        @map.each do |el|
            return el.last if el.first == key
        end
        return nil
    end

    def delete(key)
        @map.each do |el|
            @map.delete(el) if el.first == key
        end
    end

    def show
        p @map
    end
end
