class AddProducts < ActiveRecord::Migration[5.2]
  def change

		Product.create ({
			:title => 'Hawaiian', 
			:description => 'This is pizza with pineaple', 
			:price => 350, 
			:size => 30, 
			:is_spicy => false, 
			:is_veg => false, 
			:is_best_offer => false, 
			:path_to_image => '/images/1.jpg'
		})
		
		
		Product.create ({
			:title => 'Pepperoni', 
			:description => 'This is pizza with meat', 
			:price => 400, 
			:size => 30, 
			:is_spicy => true, 
			:is_veg => false, 
			:is_best_offer => true, 
			:path_to_image => '/images/2.jpg'
		})
		

		Product.create ({
			:title => 'Vegeterian', 
			:description => 'This is pizza without meat', 
			:price => 300, 
			:size => 30, 
			:is_spicy => false, 
			:is_veg => false, 
			:is_best_offer => false, 
			:path_to_image => '/images/3.jpg'
		})

  end

end
