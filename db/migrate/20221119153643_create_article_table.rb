class CreateArticleTable < ActiveRecord::Migration[7.0]
  def change
    create_table :article_tables do |t|
      t.string :title
      t.text :description
      t.timestamps
    end
  end
end
