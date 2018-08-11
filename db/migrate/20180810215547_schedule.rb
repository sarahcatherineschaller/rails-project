class Schedule < ActiveRecord::Migration[5.2]
  def change
  	create_table :schedules do |t| 
  		t.integer :student_id 
  		t.integer :classroom_id 
  		t.integer :room_number 
  		t.integer :period 
  	end
  end
end
