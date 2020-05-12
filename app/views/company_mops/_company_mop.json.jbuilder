json.extract! company_mop, :id, :change, :change_day, :start_date, :end_date, :company_id, :mop_id, :amount, :delivery_price, :contract_price, :location, :created_at, :updated_at
json.url company_mop_url(company_mop, format: :json)
