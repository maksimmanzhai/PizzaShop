class CreateOrders < ActiveRecord::Migration[5.2]
  def change
  	create_table :orders do |t| #4. greate table
			t.text :name
			t.text :phone
			t.text :list

			t.timestamps
		end #5. rake db:migrate
  end
end
