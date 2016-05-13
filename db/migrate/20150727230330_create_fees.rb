class CreateFees < ActiveRecord::Migration
  def up
    create_table :fees do |t|
      t.string :plan,limit:50
      t.string :urplan,limit:50
      t.string :duration,limit:50
      t.string :urduration,limit:50
      t.integer :feeamount

      t
    end
  end
  def down
    drop_table :fees
  end
end
