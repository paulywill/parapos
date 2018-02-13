class Rig < ApplicationRecord
  has_many :packjobs
  validates :rig_type_number, presence: true
  self.per_page = 25

end
