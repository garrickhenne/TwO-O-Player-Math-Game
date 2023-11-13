require './Player'
require './Question'

class Game
  # Boolean indicating which player's turn it is. Currently true means player 1, false means player 2.
  attr_reader :current_turn, :player1, :player2, :question, :player_winner

  def initialize()
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @current_turn = true
    @question = Question.new
    @player_winner = nil
  end

  def get_turn_formatted
    @current_turn ? @player1.name : @player2.name
  end

  def get_current_turn_player
    @current_turn ? @player1 : @player2
  end

  def get_other_player
    @current_turn ? @player2 : @player1
  end

  def switch_turn
    @current_turn = !@current_turn
  end

  def game_over?
    if @player1.dead? || @player2.dead?
      @player_winner = @player1.dead? ? @player2 : @player1
      return true
    end

    false
  end

  def attempt_answer(attempt)
    attempt == @question.answer
  end

  def gen_new_question
    @question = Question.new
  end

  def decrement_player_life
    current_player = get_current_turn_player
    current_player.decrement_life
    if current_player.dead?
      @player_winner = get_other_player
    end
  end

  def get_winner
    "#{@player_winner.name} wins with a score of #{@player_winner.lives}/3"
  end

  def get_status
    "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
  end
end