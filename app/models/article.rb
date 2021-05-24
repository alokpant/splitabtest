# frozen_string_literal: true

# Article
class Article < ActiveRecord::Base
  MODEL_PARAMS = [
    :id,
    :title,
    :description,
    article_variations_attributes: [
      :id,
      :hero_image,
      :variation_type,
      :action_button_text
    ]
  ].freeze

  validates :title, presence: true
  validates :description, presence: true

  has_many :article_variations
  accepts_nested_attributes_for :article_variations
end
