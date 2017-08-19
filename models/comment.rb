class Comment < ActiveRecord::Base
    belongs_to :user
    belongs_to :room
    
    validates :user, presence: true
    validates :content, presence: true
    validates :date, presence: true
end
