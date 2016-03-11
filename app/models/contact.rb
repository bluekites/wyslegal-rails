class Contact < ActiveRecord::Base
  
  validates :name, presence: true
  validates :email, presence: true
  validates :content, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :content, length: { maximum: 500 }
end
