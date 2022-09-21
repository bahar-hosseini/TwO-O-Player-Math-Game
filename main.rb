# frozen_string_literal: true

require './question_data'
require './game'
require 'pp'

# pp @question
game1 = Game.new
# puts game1.random_number
#  puts game1.find_question(@questions)
#  puts game1.get_input
# puts game1.find_winner()
puts game1.find_winner(@questions)
