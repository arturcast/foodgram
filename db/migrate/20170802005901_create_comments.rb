class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :text
      t.references :user, foreign_key: true
      t.references :post, foreign_key: true, on_delete: :cascade

      t.timestamps
    end
  end
end
