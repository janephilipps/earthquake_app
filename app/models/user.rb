require 'bcrypt'

class User < ActiveRecord::Base

  BCrypt::Engine.cost = 12

  attr_reader :password

  def password=(unencrypted_password)
    if unencrypted_password.nil?
      self.password_digest = nil
    else
      @password = unencrypted_password
      self.password_digest = BCrypt::Password.create(@password)
    end
  end

end
