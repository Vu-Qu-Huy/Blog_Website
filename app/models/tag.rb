class Tag < ApplicationRecord
  has_many :taggables, dependent: :destroy
  has_many :posts, through: :taggables

  before_save :downcase_name

  private

  def downcase_name
    self.name = name.strip.downcase
  end
end
