class HomeController < ApplicationController
  def index
  end

  def notify
  	@email = params[:email]

  	
  end
end
