class Phone < ApplicationRecord
	validates_numericality_of :number, greater_than_or_equal_to: 1111111111, less_than_or_equal_to: 9999999999
  validates_uniqueness_of :number

	def validate_and_save
		self.number = generate_random_number if number.blank? or invalid?
    save
  end

	def generate_random_number
    generate = true
    
    while generate
      random_no = rand(1111111111...9999999999)
      generate = false if Phone.where(number: random_no).blank?    
    end
    random_no
	end
end
