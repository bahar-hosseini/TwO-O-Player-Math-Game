# frozen_string_literal: true

# main class to run game
class Game

  def find_winner(questions)
    player1_life = 0
    player2_life = 0
    turn = 1

    while player1_life < 3 && player2_life < 3

      turn += 1

      player = if turn.even?
                 'Player1'
               else
                 'player2'
               end

      q = find_question(questions)

      question = q[:question]
      puts "#{player}: #{question}"

      a = insert_input.to_i
      if a == q[:answer]
        puts 'Yes, You are correct. '
        puts '--- NEW TURN ---'
      else
        puts 'Seriously! No'
        puts '--- NEW TURN ---'
        if player == 'Player1'
          player1_life += 1
        else
          player2_life += 1
        end
      end
      puts "P1: #{player1_life}/3 VS P2 #{player2_life}/3"

    end
    if player1_life < player2_life
      puts  "Player 1 wins with a score of #{player1_life}/3"
    else
      puts  "Player 2 wins with a score of #{player2_life}/3"
    end
    puts '--- Game Over ---'
    puts 'Good bye!'
  end

private
  def random_number
    rand(1..7)
  end
private
  def insert_input
    gets.chomp
  end

  private
  def find_question(questions)
    random = random_number
    questions.each do |q|
      return q if q[:id] == random
    end
  end
end
