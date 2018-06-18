class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :title
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end