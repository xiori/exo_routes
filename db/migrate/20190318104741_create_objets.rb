class CreateObjets < ActiveRecord::Migration[5.2]
  def change
    create_table :objets do |t|
      t.string :title
      t.text :content
      t.integer :price

      t.timestamps
    end
  end
end
