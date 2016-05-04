class AddCourseAndUserToNote < ActiveRecord::Migration
  def change
    add_column :notes, :user_id, :integer
    add_column :notes, :course_id, :integer
  end
end
