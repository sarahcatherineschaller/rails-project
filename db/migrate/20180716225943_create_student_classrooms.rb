class CreateStudentClassrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :student_classrooms do |t|
    	t.integer :student_id
    	t.intger :classroom_id

      t.timestamps
    end
  end
end
