class GamesController < ApplicationController

def play_rock
@computer_move = ["rock", "paper", "scissor"].sample

if @computer_move == "rock"
  @outcome = "tie"
elsif @computer_move == "paper"
  @outcome = "lost"
else
  @outcome = "win"
end
end

def play_paper
  @computer_move = ["rock", "paper", "scissor"].sample
  if @computer_move == "rock"
    @outcome = "win"
  elsif @computer_move == "paper"
    @outcome = "tie"
  else
    @outcome = "lost"
end
end

def play_scissor
  @computer_move = ["rock", "paper", "scissor"].sample
  if @computer_move == "rock"
    @outcome = "lost"
  elsif @computer_move == "paper"
    @outcome = "win"
  else
    @outcome = "tie"
end
end

render("games/play_rock.html.erb")
end
