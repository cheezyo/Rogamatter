class PagesController < ApplicationController
before_action :set_dates, only: [:dashboard, :one_day]

	def index
    	
  	end

  	def dashboard
      
  	end
    
    def one_day
      @todays_table = @today_remain
      @color = "danger"
      @header = "Deliveries to make today " + @today_date.strftime("%d-%m-%Y")
      @is_tomorrow = false
      @done = false
      if params[:done].present? && params[:done] == "true"
        @todays_table = @today
        @color = "success"
        @btn = "Deliver"
        @done = true
        @header = "Deliveries made today " + @today_date.strftime("%d-%m-%Y")
      
      elsif params[:day].present? && params[:day] == "tomorrow"
        @todays_table = @tomorrow
        @today_date = @today_date.next_day
        @color="warning"
        @btn = "Deliver"

        @is_tomorrow = true
        @header = "Deliveries to make tomorrow " + @today_date.next_day.strftime("%d-%m-%Y")
      end 
        @companies = Company.find(@todays_table.pluck(:company_id).uniq)

    end


  	def new_contracts
  		  @company_id = Company.first.id
  		 if params[:company_id].present?
     		 @company_id = params[:company_id].to_i
    	end
  	end
private 


def set_dates 
      @deliveries = Delivery.all
      @today_date = DateTime.now
      @today = @deliveries.where(delivery: @today_date, delivered: true)
      @today_remain = @deliveries.where(delivery: @today_date, delivered: false)
      @tomorrow = @deliveries.where(delivery: @today_date.next_day(1), delivered: false)
      @next_friday_date = @today_date.next_occurring(:friday)
      if @today_date.strftime("%A") == "Friday"          
          @next_friday_date = @today_date
      end

      @this_week_true = @deliveries.where(delivery: (@today_date)..@next_friday_date, delivered: false)
      

      if params[:date].present? 
        @today_date = DateTime.parse(params[:date])  
      end
 
        @next_friday_date = @today_date.next_occurring(:friday)
        @this_week = @deliveries.where(delivery: (@today_date)..@next_friday_date, delivered: false)

      if @today_date.strftime("%A") == "Friday"          
          @next_friday_date = @today_date
          @this_week = @today_remain
      end
        @this_week =  @this_week.order(delivery: :asc)
        @companies = Company.find(@this_week.pluck(:company_id).uniq)

end 

end