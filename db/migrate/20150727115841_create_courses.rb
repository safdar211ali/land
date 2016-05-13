class CreateCourses < ActiveRecord::Migration
  def up
    create_table :courses do |t|
      t.integer :teacher_id,:index=>true
      t.string :coursename
      t.string :school
      t.string :urcoursename
      t.string :urschool


    end
  end
  def down
    drop_table :courses
  end
end
