class Packjob < ApplicationRecord

  has_one :rig
  has_one :packer
  validates :packer_id, presence: true
  validates :rig_id, presence: true

  self.per_page = 25
end
