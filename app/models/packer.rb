class Packer < ApplicationRecord
    has_many :packjobs

    validates :name, presence: true
    validates :rating_date, presence: true
end
