### Nouns

- Player: Keep track of player answers, correct guesses
  - .choose(number)
  - lives (state)
  - dead? returns if players lives is 0.
- Game: Keep track of turn state, player lives?
  - currentTurn returns players turn
- Math utility: Includes questions and answers to be checked
  - createQuestion() creates random addition question
  - correct? (answer)
- Prompter: Writes prompts to console
  - Needs game to init
  - promptAnswer(answer) '>Player {x} right or wrong prompt'
  - newTurn() '----- NEW TURN -----'
  - promptLives() 'P1: x/3 vs P2: x/3'
  - goodbye()
