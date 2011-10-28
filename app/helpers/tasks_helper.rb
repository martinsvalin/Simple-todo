# encoding: utf-8
module TasksHelper
  def completed(task)
    task.completed ?
      content_tag(:span, "✔", class: "completed") :
      content_tag(:span, "✖", class: "incomplete")
  end
end
