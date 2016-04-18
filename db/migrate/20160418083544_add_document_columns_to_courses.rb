class AddDocumentColumnsToCourses < ActiveRecord::Migration
  def up
    add_attachment :notes, :document
  end

  def down
    remove_attachment :notes, :document
  end
end
