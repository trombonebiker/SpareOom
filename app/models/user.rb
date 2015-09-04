class User < ActiveRecord::Base

  has_many :reciepts, dependent: :destroy
  
end
