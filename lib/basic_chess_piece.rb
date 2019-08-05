class BasicChessPiece 
    attr_accessor :character, :color

    def initialize(character, color, current_position)
        @color = color
        @character = character
        @legal_moves_from_current_pos = get_legal_moves(current_position)
    end

    def get_index_from_coordinates(coordinates)
        index = coordinates.join.to_i
        if index <= 7
            index
        elsif index <= 17
            index - 2
        elsif index <= 27
            index - 4
        elsif index <= 37
            index - 6
        elsif index <= 47
            index - 8
        elsif index <= 57
            index -10
        elsif index <= 67
            index - 12
        elsif index <= 77
            index - 14
        end
    end 

end