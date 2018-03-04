class Packer < ApplicationRecord


    validates :name, presence: true
    validates :rating_date, presence: true
end
