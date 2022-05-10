class User < ApplicationRecord
    validates :username, :session_token, presence:true
    validates :password_digest, presence: {message: "Password can't be blank" } 
    validates :password, length: {minimum:6, allow_nil: true}



    def password=(password)
        self.password_digest = Bcrypt::Password.create(password)

    end

end
