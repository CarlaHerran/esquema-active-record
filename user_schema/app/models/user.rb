class User < ActiveRecord::Base
# Implementa los métodos y validaciones de tu modelo aquí. ç
	validates :email, :uniqueness => true
	validates :email, :format => {:with=> /\A([^@\s]+)(@{1})(.+)(\.{1,})(.{2,})\z/, :on=> :create}
	validate :adult
	validates :phone, length: { minimum: 10}


	def name
		self.first_name + " " + self.last_name
	end

	def age
	  2017 - self.birthday.year
	end

	def adult
		p self.age
		errors[:Base] << "nel pastel mi chavo" if self.age <= 18
	end
		
	
end
