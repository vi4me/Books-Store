class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|

      t.string :file
      t.integer :picturable_id
      t.string :picturable_type

      t.timestamps
    end
  end
end
