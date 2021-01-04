models = [TasksLog, Task, Project, Customer, User]
models.each do |model|
  model.destroy_all
  model.reset_pk_sequence
end

