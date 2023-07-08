class AddLogoToGames < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :logo, :string
  end
end
