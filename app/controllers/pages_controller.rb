class PagesController < ApplicationController
  def Home
    if !current_user
      redirect_to new_user_session_path
    end

  end


  def learned
    @test = 1
  end

  def learning

  end

  def grammar

  end

  def quiz

  end

  def test

  end
  

end
