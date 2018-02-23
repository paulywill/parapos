class Packjob < ApplicationRecord

  has_one :rig
  has_one :packer
  validates :packer, presence: true
  validates :rig_id, presence: true

  self.per_page = 25
end
