class Actor < ActiveRecord::Base
  has_many :roles
  has_many :films, { through: :roles }
end
