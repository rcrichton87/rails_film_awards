class Role < ActiveRecord::Base
  belongs_to :actor
  belongs_to :film
  has_many :awards
end
