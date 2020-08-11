require 'open-uri'
require 'json'

def generate_grid(grid_size)
  # TODO: generate random grid of letters

  [ 'a', 'q', 'r', 'z', 'i', 'e', 'u', 'h', 's', 'o', 'w' ].sample(grid_size)
end

def run_game(attempt, grid, start_time, end_time)
  # TODO: runs the game and return detailed hash of result (with `:score`, `:message` and `:time` keys)
end
