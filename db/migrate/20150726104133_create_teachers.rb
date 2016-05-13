class CreateTeachers < ActiveRecord::Migration
  def up
    create_table :teachers do |t|
      t.string :name,:limit=>50,:null=>false

    end
  end

  def down
  drop_table :teachers
  end
end
