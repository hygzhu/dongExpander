class CreateDongs < ActiveRecord::Migration[5.2]
  def change
    create_table :dongs do |t|
      t.string :name

      t.timestamps
    end
  end
end
