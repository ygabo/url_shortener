class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :link_in
      t.string :link_out

      t.timestamps
    end
  end
end
