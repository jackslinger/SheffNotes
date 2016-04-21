class AddDepartmentToCourses < ActiveRecord::Migration
  def change
    change_table :courses do |t|
      t.integer :department_id
    end
  end
end
