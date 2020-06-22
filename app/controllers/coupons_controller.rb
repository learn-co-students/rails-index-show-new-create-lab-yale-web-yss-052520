class CouponsController < ApplicationController
    def index
        @coupons = Coupon.all
    end

    def show
        @coupon = Coupon.find(params[:id])
    end

    def new
    end

    def create
        # byebug
        stuff = params.require(:coupon).permit(:coupon_code, :store)
        coupon = Coupon.create(stuff)
        redirect_to coupon_path(coupon)
    end
end
