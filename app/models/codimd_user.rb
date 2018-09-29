class CodimdUser < ActiveRecord::Base
  include CodimdDatabase
  self.table_name = 'Users'

  has_many :Notes, dependent: :destroy, foreign_key: 'id', inverse_of: :ownerId

  # id
  # profileid
  # profile
  # email
end
