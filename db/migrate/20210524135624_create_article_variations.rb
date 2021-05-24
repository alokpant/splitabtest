class CreateArticleVariations < ActiveRecord::Migration[6.0]
  def change
    create_table :article_variations do |t|
      t.references :article, null: false, foreign_key: true
      t.string :action_button_text

      t.timestamps
    end
  end
end
