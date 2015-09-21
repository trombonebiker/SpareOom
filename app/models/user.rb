class User < ActiveRecord::Base

  has_many :receipts, dependent: :destroy

  has_secure_password
  
end
