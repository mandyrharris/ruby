# Classes

# class Thing

# 	def initialize(attr1, attr2)
# 	@attr1 = attr1
# 	@attr1 = attr2
# 	end
# end

class Person
	
	def initialize(age, name)
		@name = age
		@name = name
	end
end

all_the_people = []

completion = false

puts "enter data. type 'done' when done"


while completion == false
	print "Name: "
	name = gets.chomp
	if name == "done"
		completion = true
		break
	end
	print "Enter age: "
	age = gets.chomp
	profile = Person.new(name, age)
	all_the_people.push(profile)
	puts	"profile saved"
end

puts "personnel entry complete"

# ****Shortened below to loop above####
# new_profile = Person.new(56, "Betsy")

# all_the_people.push(new_profile)

# new_profile = Person.new(23, "Frank")

# all_the_people.push(new_profile)



# person = Person.new("6ft", 17, "dan", "CLT")

# class Pet

# 	def initialize(name, age, species)
# 		@name = name
# 		@age = age
# 		@species = species
# 	end
# end

# class  Product

# 	attr_accessor :name, :price, :quantity, :brand


# 	def initialize(name, price, quantity, brand)
# 		@name = name
# 		@price = price
# 		@quantity = quantity
# 		@brand = brand
# 	end

# # ***Dont need the below if the are the attr keywords above***
# 	# def name
# 	# 	@name
# 	# end

# 	# def price
# 	# 	@price
# 	# end

# 	def qty_sold(amount)
# 		@quantity -= amount
# 	end

# 	def add_inventory(amount)
# 		@quantity += amount
# 	end
# end

# my_product = Product.new("TV", "$560", 5, "Samsung")

# puts "how many #{my_product.name}s would you like?"

# puts "there are now #{my_product.quantity} left in inventory"


# class Vehicle

# attr_accessor : :make, :model, :color, :year, :quantity

# 	def initialize(make, model, color, year, quantity)
# 		@make = make
# 		@model = model
# 		@color = color
# 		@year = year
# 		@quantity = quantity
# 	end

# def full_profile
# 	puts "#{@make}, #{@model}, #{@olor}, #{@year}, #{@quantity}"
# end
		
# end



