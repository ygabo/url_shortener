class ChangeLinksTableColumn < ActiveRecord::Migration
  def up
  	change_column :links, :link_out, :text
  end

  def down
  	change_column :links, :link_out, :string
  end
end
