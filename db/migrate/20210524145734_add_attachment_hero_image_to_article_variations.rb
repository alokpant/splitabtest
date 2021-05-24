class AddAttachmentHeroImageToArticleVariations < ActiveRecord::Migration[6.0]
  def self.up
    change_table :article_variations do |t|
      t.attachment :hero_image
    end
  end

  def self.down
    remove_attachment :article_variations, :hero_image
  end
end
