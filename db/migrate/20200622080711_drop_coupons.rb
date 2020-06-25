class DropCoupons < ActiveRecord::Migration[5.0]
  def change
    drop_table :coupons
  end
end
