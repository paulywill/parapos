class Rig < ApplicationRecord
  has_many :packjobs
  validates :rig_type_number, presence: true

end
