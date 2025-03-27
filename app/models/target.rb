class Target < ApplicationRecord
    has_many :PositiveWords, dependent: :destroy
    validates :name, presence: true
end
