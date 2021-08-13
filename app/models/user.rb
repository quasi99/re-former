class User < ApplicationRecord
	validates(:username, presence: { message: 'Must be present.' }, uniqueness: true)
	validates(:email, presence: { message: 'Must be present.' }, uniqueness: true)
	validates(:password, presence: { message: 'Must be present.' }, length: { in: 6..8 })
end
