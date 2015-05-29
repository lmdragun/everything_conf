class User < ActiveRecord::Base
		before_create :create_remember_token
		has_many :follows
		has_many :followed, :through => :follows
		has_many :inverse_follows, :class_name => "Follow", :foreign_key => "followed_id"
		has_many :followers, :through => :inverse_follows, :source => :user

	def User.new_remember_token
		SecureRandom.urlsafe_base64
	end

	def User.hash(token)
		Digest::SHA1.hexdigest(token.to_s)
	end

	def follow(other_user)
		if self.followed.include?(other_user)
			return false
		else
			self.follows.create(:followed_id => other_user.id)
			return true
		end
	end

private
	def create_remember_token
		remember_token = User.has(User.new_remember_token)
	end

end
