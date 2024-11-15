class Game
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = @player1
  end

  # Generate new question
  def play_turn
    question = Question.new
    question.ask

    # Check if answer is correct and display scores
    answer = gets.chomp.to_i
    # If correct answer
    if answer == question.correct_answer
      puts "Correct!"
    # If wrong answer
    else
      puts "Incorrect! You lose a life."
      @current_player.lose_life
    end
    display_scores
  end

  def switch_turn
    @current_player = @current_player == @player1 ? @player2 : @player1
  end

  def display_scores
    puts "#{@player1.name} has #{@player1.lives} lives left."
    puts "#{@player2.name} has #{@player2.lives} lives left."
  end

  def game_over?
    !@player1.is_alive? || !@player2.is_alive?
  end

  def announce_winner
    if @player1.is_alive?
      puts "#{@player1.name} wins!"
    else
      puts "#{@player2.name} wins!"
    end
  end
end