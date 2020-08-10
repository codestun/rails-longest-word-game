class GamesController < ApplicationController
  def new
  end

  def score
    @letters = [ 'a', 'q', 'r', 'z', 'i', 'e', 'u', 'h', 's', 'o', 'w' ] 
  end
end
