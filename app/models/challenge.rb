class Challenge < ApplicationRecord
    belongs_to :user  
    validates :title, presence: true, length: {minimum:4,maximum:20}
    validates :description, presence: true, length: {maximum:50}
end
