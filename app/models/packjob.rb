class Packjob < ApplicationRecord
  validates :packer, presence: true
  validates :rig, presence: true

  self.per_page = 25
end
