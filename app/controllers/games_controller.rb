require 'open-uri'
require 'json'
require_relative "../../lib/longest_word"

class GamesController < ApplicationController
  def new
  end

  def score
    @letters = [ 'a', 'q', 'r', 'z', 'i', 'e', 'u', 'h', 's', 'o', 'w' ] 

    puts "******** Welcome to the longest word-game!********"
    puts "Here is your grid:"
    binding.pry
    grid = generate_grid(9)
    puts grid.join(" ")
    puts "*****************************************************"

    puts "What's your best shot?"
    start_time = Time.now
    attempt = gets.chomp
    end_time = Time.now

    puts "******** Now your result ********"

    result = run_game(attempt, grid, start_time, end_time)

    puts "Your word: #{attempt}"
    puts "Time Taken to answer: #{result[:time]}"
    puts "Your score: #{result[:score]}"
    puts "Message: #{result[:message]}"

    puts "*****************************************************"

  end

  # def generate_grid(grid_size)
  #   # TODO: generate random grid of letters
    
  # end

  # def run_game(attempt, grid, start_time, end_time)
  #   # TODO: runs the game and return detailed hash of result (with `:score`, `:message` and `:time` keys)
  # end
end
