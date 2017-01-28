class PrayersController < ApplicationController
    def index
        @prayers = Prayer.all
    end
    
    def new
        @prayer = Prayer.new 
    end
end
