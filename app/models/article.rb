class Article < ApplicationRecord
    include Visible
    include Count

    has_many :comments

    validates :title, presence: true, length: {maximum: 20}
    validates :body, presence: true, length: {minimum: 2}
    validates :author, presence: true
end
