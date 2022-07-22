class Post < ApplicationRecord
    validates :title, presence: true
    validates :name, presence: true, length: {minimum:3, maximum:300}
    validates :description, presence: true 
    validates :author, presence: true
end
