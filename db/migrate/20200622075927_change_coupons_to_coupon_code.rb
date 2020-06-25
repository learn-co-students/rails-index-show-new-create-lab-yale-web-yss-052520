class ChangeCouponsToCouponCode < ActiveRecord::Migration[5.0]
  def change
    change_column :coupons, :coupons, :coupon_code
  end
end
