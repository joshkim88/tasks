class RemoveOverdueFromTasks < ActiveRecord::Migration[6.0]
  def change
    remove_column :tasks, :overdue, :boolean
  end
end
