# encoding: utf-8
module TasksHelper
  def completed(task)
    task.completed ?
      "✔" :
      "✖"
  end
end
