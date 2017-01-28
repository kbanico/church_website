class PrayersController < ApplicationController
    def index
        @prayers = Prayer.all
    end
    
    def new
        @prayer = Prayer.new 
    end
    
    def create
        Prayer.create(prayer_params)
        redirect_to prayers_path
    end
    
    private
    
    def prayer_params
        params.require(:prayer).permit(:name, :email, :request_type, :title, :description)
    end
end
