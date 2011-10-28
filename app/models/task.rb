class Task < ActiveRecord::Base
  validates :name, :presence => true

  def toggle_and_give_message
    toggle(:completed)
    save
    completed ? "Task done!" : "Task undone."
  end
end
