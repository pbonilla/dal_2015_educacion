class LearningSession < ActiveRecord::Base
  belongs_to :group
  validates_presence_of :key_session
end