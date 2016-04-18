class AddCourseAndUserToNote < ActiveRecord::Migration
  def change
    add_column :notes, :user_id, :reference
    add_column :notes, :course_id, :reference
  end
end
