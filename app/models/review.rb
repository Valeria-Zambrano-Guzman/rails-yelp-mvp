class Review < ApplicationRecord
    belongs_to :restaurant
    validates :rating, inclusion: { in: (0..5)}, numericality: { only_integer: true }
    #numericality, mayor que o menor que
    validates :content, presence: true
end
