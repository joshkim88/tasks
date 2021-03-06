class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.datetime :duedate
      t.boolean :completed
      t.boolean :overdue

      t.timestamps
    end
  end
end
