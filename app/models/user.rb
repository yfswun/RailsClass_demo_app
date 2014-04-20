class User < ActiveRecord::Base

  before_save { self.email = email.downcase }

  has_many :microposts

  validates_presence_of :name
  validates_length_of :name, maximum: 50

  validates_presence_of :email
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  validates_length_of :password, minimum: 6
  has_secure_password

end
