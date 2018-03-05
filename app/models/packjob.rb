class Packjob < ApplicationRecord

  belongs_to :rig
  belongs_to :packer
  validates :packer_id, presence: true
  validates :rig_id, presence: true

  self.per_page = 25
end
