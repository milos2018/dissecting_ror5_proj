class Portfolio < ApplicationRecord
  has_many :technologies

  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular
    where subtitile: "Angular"
  end

  scope :ruby_on_rails_portfolio_item, -> { where(subtitile: "Ruby on rails") }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: 600, width: 400)
    self.thumb_image ||= Placeholder.image_generator(height: 300, width: 200)
  end
end
