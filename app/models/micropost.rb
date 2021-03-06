class Micropost < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :user_id
  validates_presence_of :content
  validates :content, length: { maximum: 140 }
end
