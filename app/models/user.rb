class User < ActiveRecord::Base
  has_secure_password

  before_save :standardize_email

  validates :name, presence: true
  validates :email, presence: true

  def standardize_email
    self.email = email.downcase
  end
end
