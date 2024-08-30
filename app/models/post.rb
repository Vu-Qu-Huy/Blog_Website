class Post < ApplicationRecord
  before_save :set_time
  has_rich_text :body

  before_save :set_plain_text_body

  
  def self.ransackable_attributes(auth_object = nil)
    ["title","plain_text_body"]
  end

  private
  def set_plain_text_body
     self.plain_text_body = "#{title}\n\n#{body.to_plain_text}"
  end

  def set_time
    self.time = Time.now
  end

  validates :title, presence: true, length: {  maximum: 50 }
  validates :body, presence: true, length: { minimum: 10, maximum: 100000 }
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  has_many :taggables, dependent: :destroy
  has_many :tags, through: :taggables

  has_one_attached :preview_image do |attachable|
  
    attachable.variant :thumb, resize_to_fill: [100, 100]
  
  end
end
