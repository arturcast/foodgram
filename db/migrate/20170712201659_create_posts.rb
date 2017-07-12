class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :description, limit: 128

      t.timestamps
    end
  end
end
