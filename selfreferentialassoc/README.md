# Self Referential Associations
## What is it?
	* A way to connect a table to itself
	* Make associations like follows, friendships, etc.
	* Great when you have users interacting
	* Adds one table, a controller, a model, and a few lines to your User model
	* Example: The top of my User Model from my Comic Book Library
	 both the Lendee/Lender and Follows/Followed parts are self referential
```ruby
			class User < ActiveRecord::Base
			has_many :comics, through: :ownerships
			has_many :ownerships
			has_many :lendees
			has_many :lenders
			has_many :loans, :through => :lenders
			has_many :loans, :through => :lendees
			has_many :follows
			has_many :followed, :through => :follows
			has_many :inverse_follows, :class_name => "Follow", :foreign_key => "followed_id"
			has_many :followers, :through => :inverse_follows, :source => :user
	```
## In the Starter folder, you'll find a very basic Rails app ready for self referential associations
## In the Solution folder, you'll find that same Rails app with Follows implemented
