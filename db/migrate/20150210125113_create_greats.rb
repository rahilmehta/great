class CreateGreats < ActiveRecord::Migration
  def change
    create_table :greats do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
