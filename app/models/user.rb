class User < ActiveRecord::Base

  has_many :receipts, dependent: :destroy
  
end
