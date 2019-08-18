require_relative "basic_chess_piece"

class Bishop < BasicChessPiece

    def get_moves
        x = @current_position[0]
        y = @current_position[1]
        adj_list = []

        for i in 1..7 do 
            break if (x + i > 7 || y + i > 7)
            adj_list << [x + i, y + i]
        end
                   
        for i in 1..7 do 
            break if (x - i < 0 || y - i < 0)
            adj_list << [x - i, y - i]
        end

        for i in 1..7 do 
            break if (x + i > 7 || y - i < 0)
            adj_list << [x + i, y - i]
        end

        for i in 1..7 do 
            break if (x - i < 0 || y + i > 7)
            adj_list << [x - i, y + i]
        end

        adj_list
    end
end