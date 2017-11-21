class BlogPost < ApplicationRecord
    #attr_access :content, :publishdate, :title
    has_many :comments
    validates :title, length: {minimum: 5, maximum: 200}
    validates :content, length: {minimum: 5}
end
