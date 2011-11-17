require 'valid_email'

class Follower
	include ActiveModel::Validations
	include ActiveModel::Conversion
  extend ActiveModel::Naming
	
	attr_accessor :email

	validates :email, :email => true

	def persisted?
		false
	end
end