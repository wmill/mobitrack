class User < ActiveRecord::Base
  has_many :observation
end
