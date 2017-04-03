class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper


  def application

  @game = Game.all();
  @genre = GameGenre.all();

  end

  def index

  @game = Game.all();
  @genre = GameGenre.all();

  end



end
