class CreateProducts < ActiveRecord::Migration[5.2]
	def change
		create_table :products do |t| #4. greate table
			t.string :title
			t.text :description
			t.decimal :price
			t.decimal :size
			t.boolean :is_spicy
			t.boolean :is_veg
			t.boolean :is_best_offer
			t.string :path_to_image

			t.timestamps
		end #5. rake db:migrate
	end
end
