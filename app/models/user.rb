class User < ActiveRecord::Base
	validates :password, presence: true, length: { minimum: 6 }
      validates :password_confirmation, presence: true
	has_secure_password  
	# Replace current before_save code with the following:
      before_save do |user| 
              user.email = email.downcase 
            user.remember_token = SecureRandom.urlsafe_base64
            end
       # End of replacement
   
end
