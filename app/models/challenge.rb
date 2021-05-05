class Challenge < ApplicationRecord
    acts_as_votable
    acts_as_followable
    belongs_to :user  
    validates :title, presence: true, length: {minimum:4,maximum:20}
    validates :description, presence: true, length: {minimum:4,maximum:100}
    def self.search(search)
        if search
          where('title LIKE ?', "%#{search}%")
        
            
        else
        all  
        
        end
      end
end
