class PrayersController < ApplicationController
    def index
        @prayers = Prayer.all
        #@prayers_by_date = @prayers.group(&:created_at.strftime('%Y-%m-%d'))
      
        
        @day = Date.today.strftime("%Y-%m-%d")
        
        # FOR INDEX PAGE
        # <%= calendar do |date| %>
        #     <%= date.day %>
        #     <% if @prayers_by_date[date] %>
        #         <ul>
        #             <% @prayers_by_date[date].each do |prayer| %>
        #                 <li><%= link_to prayer.name, "#" %></li>
        #             <% end %>
        #         </ul>
        #     <% end %>
        # <% end %>
            

        
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
