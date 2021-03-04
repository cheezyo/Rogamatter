class CompanyMat < ApplicationRecord
	belongs_to :company
	belongs_to :mat
	has_many :mat_inventories, :dependent => :delete_all
	after_create :matinvetory
	before_destroy :archive_item
	validates_presence_of :amount, :delivery_price, :month_price


	def name
		self.mat.name
	end


	def deliveries

		deliveries = Delivery.where(klass: self.class.name, klass_id: self.id )
	end

	def month_price
		self.contract_price * 4 * self.amount
	end


	def delivery_m_price
		self.delivery_price * self.change
	end

	def month_sum
		self.month_price + self.delivery_m_price
	end
	

	def matinvetory
		m = MatInventory.new
		m.company_mat_id = self.id
		m.mat_id = self.mat.id
		m.sold = self.amount
		m.save!

		start_date = self.start_date
		loop do
			d = Delivery.new
		 	d.klass = self.class.name
		 	d.klass_id = self.id
		 	d.delivery = start_date
		 	d.company_id = self.company_id
		 	
		 	case self.change
		 	when 1
		 		start_date = start_date.next_day(28)
	 		when 2
	 			start_date = start_date.next_day(14)
	 		when 3
	 			start_date = start_date.next_day(21)
	 		when 4 
	 			start_date = start_date.next_day(7)
	 		else 
	 			"Error no interval"
	 		end

	 		d.change_amount = self.amount
	 		d.delivered = false
	 		d.save!
		 

		break if start_date > self.end_date

		end
	end

	def archive_item
		self.deliveries.each do |d|
			d.destroy
		end
	end

	def day
		["Mandag", "Tirsdag", "Onsdag", "Torsdag", "Fredag"]

	end


	def change_interval
		[1,2,3,4]
	end


	



end
