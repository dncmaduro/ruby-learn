class Article < ApplicationRecord
    validates :title, presence: true, length: {maximum: 20}
    validates :body, presence: true, length: {minimum: 2}
    validates :author, presence: true
end
