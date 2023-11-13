require './Game'
require './Prompter'

game = Game.new()
prompter = Prompter.new(game)

until game.game_over?
  prompter.prompt_question(game.question, game.get_turn_formatted)
  prompter.prompt_answer
end

prompter.goodbye