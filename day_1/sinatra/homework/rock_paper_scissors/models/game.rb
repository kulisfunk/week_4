class Game

  def initialize(num1)
    @num1 = num1
    @num2 = 0
    @play = []
    @play << @num1
    @winner = [[1, 3], [2, 1], [3, 2]]
  end

  def round()
    @num2 = rand(1..3)
    if @num1 == @num2
      return 3
    else
      @play << @num2
      return @play if @winner.include?(@play)
    end
    return 2
  end

  def winner(result)
    if result.is_a? Integer
      if result == 2
        case @num2 #check player 2 wins
        when 1
          return "Player1 Scissors is beaten by Computer Rock"
        when 2
          return "Player1 Rock is beaten by Computer Paper"
        when 3
          return "Player1 Paper is beaten by Computer Scissors"
        end
      else
        if result == 3
          case @num1 # check for draw
          when 1
            return "Player1 Rock draws with Computer Rock try again"
          when 2
            return "Player1 Paper draws with Computer Paper, try again"
          when 3
            return "Player1 Scissors draws with Computer Scissors, try again"
          end
        end
      end
    else
      case result[0] #check player1 wins
      when 1
       return "Player1 Rock beats Computer Scissors"
      when 2
        return "Player1 Paper beats Computer Rock"
      when 3
        return "Player1 Scissors beats Computer Paper"
      end
    end
  end






  end
