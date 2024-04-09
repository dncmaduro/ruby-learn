class Comment < ApplicationRecord
  include Visible
  include Count

  belongs_to :article

  validates :commenter, presence: true, length: {maximum: 20}
  validates :body, presence: true, length: {minimum: 2}
end
