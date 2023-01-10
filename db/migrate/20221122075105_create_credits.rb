class CreateCredits < ActiveRecord::Migration[7.0]
  def change
    create_table :credits do |t|
      t.integer :credit_num
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
