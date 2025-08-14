class Document < ApplicationRecord
  belongs_to :user
  has_one_attached :file

  before_create :generate_share_token

  private

  def generate_share_token
    self.share_token = SecureRandom.hex(5)
  end
end
