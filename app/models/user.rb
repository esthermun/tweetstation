class User < ActiveRecord::Base
	
	# Relations
	has_many :posts

	#Callbacks
	before_save do
		puts "Before save"
		self.email = email.downcase
	end

	after_save {puts "After save."}
	after_commit {puts "After commit"}

	# validation and also prevent duplicates
	
	EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	
	validates :name, presence: true
	
	validates :email, presence: true,
				     uniqueness: true,
				     format: {with: EMAIL_REGEX, message: "Must be a valid email address"}

end
