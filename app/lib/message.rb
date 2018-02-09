class	Message

	def self.not_found(record = 'record')
		"Sorry, #{record} not found"
	end

	def self.invalid_credentials
		'Invalid credentials'
	end

	def self.invalid_token
		'Invalid token'
	end

	def self.missing_token
		"Missing token"
	end

	def self.unahoutrized
		'unahoutrized request'
	end

	def self.account_created
		'Account created successfully'
	end

	def self.account_not_created
		'Account could not be created'
	end

	def self.expired_token
		'sorry, your token has expired. Please login to continue.'
	end
end