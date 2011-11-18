require 'follower'
require 'pp'

class HomeController < ApplicationController
  def index
  	@follower = Follower.new
  end

  def notify
  	follower = Follower.new(params[:follower][:email])
  	if follower.valid?
  		redirect_to :back, :flash => { :success => "Thanks for subscribing." }
  	else
			redirect_to :back, :flash => { :error => "Oops. Please enter a valid e-mail address." }
		end
  end
end
