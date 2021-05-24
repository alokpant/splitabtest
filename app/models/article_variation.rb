# frozen_string_literal: true

# Article variation
class ArticleVariation < ActiveRecord::Base
  enum variation_type: { standard: 0, control: 1, variant: 2 }, _prefix: true

  MODEL_PARAMS = [
    :id,
    :hero_image,
    :action_button_text,
    :variation_type
  ].freeze

  has_attached_file :hero_image
  validates_attachment_content_type :hero_image, content_type: /\Aimage\/.*\z/
  validates_with AttachmentSizeValidator, attributes: :hero_image, less_than: 2.megabytes

  # validates :variation_type, numericality: { greater_than: 0, less_than: 3 }

  belongs_to :article
end
