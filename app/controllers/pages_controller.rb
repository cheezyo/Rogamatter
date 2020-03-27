class PagesController < ApplicationController


	def index
    	
  	end

  	def dashboard
      @deliveries = Delivery.all
      @today_date = DateTime.now

      if params[:date].present? 
        @today_date = DateTime.parse(params[:date])  
      end

      @today = @deliveries.where(delivery: @today_date, delivered: true)
      
      @today_remain = @deliveries.where(delivery: @today_date, delivered: false)

      @tomorrow = @deliveries.where(delivery: @today_date.next_day(1), delivered: false)
      
      @this_week = @today_remain
      @next_friday_date = @today_date
      if @today_date.strftime("%A") != "Friday"
          
        @next_friday_date = @today_date.next_occurring(:friday)

        @this_week = @deliveries.where(delivery: (@today_date)..@today_date.next_occurring(:friday), delivered: false)

      end
  	end

  	def new_contracts
  		@company_id = Company.first.id
  		 if params[:company_id].present?
     		 @company_id = params[:company_id].to_i
    	end
  	end

end