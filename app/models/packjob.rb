class Packjob < ApplicationRecord

  belongs_to :rig
  validates :packer, presence: true
  validates :rig_id, presence: true

  self.per_page = 25
end
