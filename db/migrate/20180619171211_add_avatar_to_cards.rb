class AddAvatarToCards < ActiveRecord::Migration[5.2]
  def change
    add_column :cards, :avatar, :string
  end
end
