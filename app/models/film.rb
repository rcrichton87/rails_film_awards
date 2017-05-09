class Film < ActiveRecord::Base
  has_many :roles
  has_many :actors, { through: :roles }
end
