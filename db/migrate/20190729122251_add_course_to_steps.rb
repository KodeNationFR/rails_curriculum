class AddCourseToSteps < ActiveRecord::Migration[5.2]
  def change
    add_reference :steps, :course, foreign_key: true
  end
end
