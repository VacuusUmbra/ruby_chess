class HumanInputError < StandardError
    def initialize(msg)
        case msg
        when "opponents piece"
            super("You cannot select opponents pieces")
        when "blank"
            super("That square is empty. Select a playing piece")
        when"not possible"
            super("Move is not possible")
        when "illegal"
            super("That is an illegal move")
        when "blank reply"
            super("You must type something")
        when "invalid x coord"
            super("X coordinate must be a letter")
        when "x out of range"
            super("X coordinate is out of range")
        when "no y coord"
            super("You didnt enter a Y coordinate")
        when "invalid y coord"
            super("Y coordinate must be a number")
        when "y out of range"
            super("Y coordinate is out of range")
        end
    end
end