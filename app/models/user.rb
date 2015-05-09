require 'bcrypt'

class User < ActiveRecord::Base

  BCrypt::Engine.cost = 12

  attr_reader :password

  validates_confirmation_of :password
  validates_presence_of :password_digest

  def authenticate(unencrypted_password)
    if BCrypt::Password.new(password_digest) == unencrypted_password
      self
    else
      false
    end
  end

  def password=(unencrypted_password)
    if unencrypted_password.nil?
      self.password_digest = nil
    else
      @password = unencrypted_password
      self.password_digest = BCrypt::Password.create(@password)
    end
  end

end
