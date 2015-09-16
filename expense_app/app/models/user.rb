class User < ActiveRecord::Base
	has_many :trips

	validates :username, uniqueness: true
	validates :username, presence: true
	validates :password, presence: true

	has_secure_password
end
