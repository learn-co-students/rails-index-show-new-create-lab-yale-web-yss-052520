class CouponsController < ApplicationController
    

    
    def index
        @coupons = Coupon.all 
    end

    def show
        @coupon = find_coupon 
    end

    def new
        @coupon = Coupon.new 
    end

    def create
        # byebug
        @coupon = Coupon.create(strong_params)
        # byebug 
        redirect_to coupon_path(@coupon)
    end

    private

    def find_coupon
        Coupon.find(params[:id])
    end

    def strong_params
        params.require(:coupon).permit(:coupon_code, :store)
    end

end