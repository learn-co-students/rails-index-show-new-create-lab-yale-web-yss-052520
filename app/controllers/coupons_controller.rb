class CouponsController < ActionController::Base
    
    def index
        @coupons = Coupon.all
        # byebug
    end

    def show 
        @coupon = Coupon.find(params[:id])
    end

    def new

    end

    def create
        coupon = Coupon.new
        coupon.store = params[:coupon][:store]
        coupon.coupon_code = params[:coupon][:coupon_code]
        coupon.save
        redirect_to coupon_path(coupon)
    end
end
  