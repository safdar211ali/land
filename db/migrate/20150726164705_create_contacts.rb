class CreateContacts < ActiveRecord::Migration
  def up
    create_table :contacts do |t|
      t.string :urcontactname,:limit=>50
      t.string :contactname,:limit=>50
      t.string :contact,:limit=>50
      t.integer :teacher_id, :index=>true


    end
  end
  def down
    drop_table :contacts
  end

end
