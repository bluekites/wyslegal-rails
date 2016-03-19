class Post < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  def self.descending
    all.order(created_at: "desc")
  end
end
