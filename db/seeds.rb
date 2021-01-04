#! Delete all models and reset database
models = [TasksLog, Task, Project, Customer, User]
models.each do |model|
  model.destroy_all
  model.reset_pk_sequence
  puts "#{model} count reset to: #{model.count}"
end

#! Create Users
500.times do 
  User.create(
    first_name: Faker::Superhero.prefix,
    last_name: Faker::Hipster.word.capitalize,
    email: Faker::Internet.email,
    password: "password",
    admin: Faker::Boolean.boolean
  )
end
puts "#{User.count} Users created."

#! Create Customers
1000.times do
  Customer.create(
    name: Faker::Superhero.name
  )
end
puts "#{Customer.count} Customers created."

#! Create Projects
2000.times do
  Project.create(
    name: Faker::Game.title,
    customer_id: Faker::Number.between(from: Customer.first.id, to: Customer.last.id)
  )
end
puts "#{Project.count} Projects created."

#! Create Tasks
5000.times do
  Task.create(
    project_id: Faker::Number.between(from: Project.first.id, to: Project.last.id),
    description: Faker::Hipster.sentence(word_count: 5)
  )
end
puts "#{Task.count} Tasks created."

#! Create join tables
5000.times do
  TasksLog.create(
    task_id: Faker::Number.between(from: Task.first.id, to: Task.last.id),
    user_id: Faker::Number.between(from: User.first.id, to: User.last.id)
  )
end
puts "#{TasksLog.count} Taskslogs created."