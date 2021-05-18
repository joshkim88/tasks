class Task < ApplicationRecord
  #use scope on Task model to mark overdue Tasks if the present date is greater than duedate.
  scope :overdue, -> { where("duedate < ?", Time.now) }
  #use scope on Task model to get Tasks due today.
  scope :due_today, ->{ where("duedate >= ? AND duedate <= ?", Date.current.beginning_of_day, Date.current.end_of_day) }

  def overdue?
    duedate < Time.now
  end

  def due_today?
    duedate >= Date.current.beginning_of_day && duedate <= Date.current.end_of_day
  end

end
