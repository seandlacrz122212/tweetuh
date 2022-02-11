class Shoutout < ApplicationRecord
    validates :name, presence: true, format: { with: /\A[a-zA-Z]+\z/,
    message: "Name has characters that aren't allowed" }
    validates :usrname, presence: true, uniqueness: true
    validates :body, length: {maximum: 150}, presence: true
end
