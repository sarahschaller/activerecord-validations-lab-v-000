class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maxiumum: 250 }
  validates :category, inclusion: { in: ["Fiction", "Non-fiction"]}
  validates :title, click_bait: true
end
