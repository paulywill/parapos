class Packer < ApplicationRecord
    belongs_to :packjobs

    validates :name, presence: true
    validates :rating_date, presence: true
end
