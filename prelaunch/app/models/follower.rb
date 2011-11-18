require 'valid_email'

class Follower
	include ActiveModel::Validations
	include ActiveModel::Conversion
  extend ActiveModel::Naming
	
	attr_accessor :email

	validates :email, :presence => true, :email => true

	def initialize (address=nil)
		@email = address
	end

	def persisted?
		false
	end
end