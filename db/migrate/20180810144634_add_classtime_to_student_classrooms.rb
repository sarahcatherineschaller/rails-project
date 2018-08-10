class AddClasstimeToStudentClassrooms < ActiveRecord::Migration[5.2]
  def change
    add_column :student_classrooms, :classtime, :datetime
  end
end
