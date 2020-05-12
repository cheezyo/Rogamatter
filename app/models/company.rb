class Company < ApplicationRecord
	has_many :company_mats
	has_many :company_mops


	def comments
		Comment.where(klass: self.class.name, klass_id: self.id ).order(created_at: :asc)
 
	end
end
