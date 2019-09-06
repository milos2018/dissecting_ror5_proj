class Portfolio < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular
    where subtitile: "Angular"
  end

  scope :ruby_on_rails_portfolio_item, lambda { where(subtitile: "Ruby on rails") }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: 600, width: 400)
    self.thumb_image ||= Placeholder.image_generator(width: 200, height: 100)
  end
end
