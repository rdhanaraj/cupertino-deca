class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :start
      t.string :end
      t.text :description
      t.string :img_url

      t.timestamps
    end
  end
end
