class AddVariationTypeToArticleVariations < ActiveRecord::Migration[6.0]
  def change
    add_column :article_variations, :variation_type, :integer, default: 0
    add_index :article_variations, :variation_type
  end
end
