class CouponsController < ApplicationController
    def index
        @coupons = Coupon.all
    end

    def show
        @coupon = current_coupon
    end

    def new
    end

    def create
        @coupon = Coupon.create(coupon_params)
        redirect_to coupon_path(@coupon)
    end

    private

    def current_coupon
        Coupon.find(params[:id])
    end

    def coupon_params
        params.require(:coupon).permit(:coupon_code, :store)
    end
end