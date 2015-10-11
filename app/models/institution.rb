class Institution < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :mep_id

  has_and_belongs_to_many :users
end