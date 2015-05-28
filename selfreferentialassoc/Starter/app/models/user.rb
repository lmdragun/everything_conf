class User < ActiveRecord::Base
		before_create :create_remember_token
		has_many :follows
		has_many :followed, :through => :follows
		has_many :inverse_follows, :class_name => "Follow", :foreign_key => "followed_id"
		has_many :followers, :through => :inverse_follows, :source => :user

	def User.new_remember_token
		SecureRandom.urlsafe_base64
	end

	def create_remember_token
		remember_token = User.new_remember_token
	end

end
