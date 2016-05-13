class CreateServices < ActiveRecord::Migration
  def up
    create_table :services do |t|
      t.string :name,limit:120
      t.string :urname,limit:120


    end
  end
  def down
    drop_table :services
  end
end
