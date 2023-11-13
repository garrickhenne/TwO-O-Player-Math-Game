class Prompter
  def initialize(game)
    @game = game
  end

  def prompt_question(question, player)
    puts "#{player}: What does #{question.first_number} plus #{question.second_number} equal?"
  end

  def new_turn
    if @game.player_winner.nil?
      prompt_lives
      @game.switch_turn
      puts '----- NEW TURN -----'
    end
  end

  def prompt_lives
    puts @game.get_status
  end

  def goodbye
    prompt_winner
    puts '----- GAME OVER -----'
    puts 'Good bye!'
  end

  def prompt_answer
    # Ask for answer choice.
    answer = gets.chomp.to_i
    
    # Check whether answer is questions answer.
    if @game.attempt_answer(answer)
      puts 'YES! You are correct.'
      new_turn
      @game.gen_new_question
    else
      puts 'Seriously? No!'
      @game.decrement_player_life
      new_turn
    end
  end

  def prompt_winner
    if @game.player_winner.nil?
      raise Exception.new('Something went wrong calculating player winner.')
    end

    puts @game.get_winner
  end
end