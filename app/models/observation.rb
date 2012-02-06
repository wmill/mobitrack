class Observation < ActiveRecord::Base
  belongs_to :convention_delegate
  belongs_to :user
end
