class RenameBirthdateToAgeInUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :birthdate, :age
  end
end
