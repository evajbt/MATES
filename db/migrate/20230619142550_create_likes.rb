class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.references :liked, index: true, foreign_key: { to_table: :users }, null: false
      t.references :liker, index: true, foreign_key: { to_table: :users }, null: false
      t.timestamps
    end
  end
end
