class AddUrnameToTeachers < ActiveRecord::Migration
  def up
    add_column :teachers,:urname,:string,:limit=>50
  end
  def down
    remove_column :teachers,:urname
  end
end
