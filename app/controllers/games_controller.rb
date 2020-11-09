class GamesController < ApplicationController
  def new
    @letters_score = ("a".."z").to_a.sample(10)
    # @letters_score = Array.new(10) { rand(a..z) }
  end

  def score
    # if (@letters_score).include?
    user_letters = params[:user_answer].chars;
    user_letters.each do |user_letter|
      user_letter
    end
    if params[:user_answer].!include?(user_letters)
      `Sorry but ${:user_answer} can't be built out of @letters_score`
    end
  end
end
