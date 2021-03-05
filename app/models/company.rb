class Company < ApplicationRecord
	has_many :company_mats,  :dependent => :destroy
	has_many :company_mops,  :dependent => :destroy


	def comments
		Comment.where(klass: self.class.name, klass_id: self.id ).order(created_at: :asc)
 
	end


	def short_name
		self.name.delete(" ").downcase
	end

end
