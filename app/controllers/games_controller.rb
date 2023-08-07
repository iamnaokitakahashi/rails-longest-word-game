require 'json'
require 'open-uri'

class GamesController < ApplicationController
  def new
    @letters = ('A'..'Z').to_a.sample(10)
  end

  def score
    # line 10 to 16 checking if its english word
    @words = params[:new]
    url = "https://wagon-dictionary.herokuapp.com/:score"
    word_serialized = URI.open(url).read
    api_reply = JSON.parse(word_serialized)
    # api_reply["found"]
    # found through api
    correct_word = api_reply["found"]
    raise
  end
end
