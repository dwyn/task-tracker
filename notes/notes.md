To prepare for the project:

• Set up your laptop and get a web framework running  ✔
• Configure a database connection and a schema based on the attached schema diagram ✔
• Implement the ability for users to login with authentication and authorization ✔
• Implement the ability for users to add, edit and delete a customer, project and task ✔
• Seed your database with projects, customers and tasks (no admin interface is necessary) ✔
• Implement the ability for users to log how much time they work on a task 


## Implement the ability for users to add, edit and delete a customer, project and task
- should a user be able to only edit ANY customer, project or task?
- should customers have the ability to sign in to edit projects / tasks as well? 


## Configure a database connection and a schema based on the attached schema diagram
- Is PostgreSQL okay?

## Implement the ability for users to login with authentication and authorization
- I think I may use Devise, Rolify, and CanCanCan for this.

## Seed your database with projects, customers and tasks (no admin interface is necessary)
- Definitely use Faker?
https://github.com/ryanb/populator
- ActiveAdmin for admin interface, IF I have enough time and bandwidth

## Implement the ability for users to log how much time they work on a task
- Should I allow the user to toggle a timer, or entire time worked manually?


# Language
Ruby 3?

# Framework
Rails
React? (technically a library lol)

# Database
Postgres

# Tecnologies
JSON serializer (ActiveModel?)
Devise https://github.com/heartcombo/devise#getting-started
Better Errors

# Styling
Bootstrap fooorrrr sure
[Bootstrap](https://www.digitalocean.com/community/tutorials/how-to-add-bootstrap-to-a-ruby-on-rails-application)

https://launchschool.com/blog/integrating-rails-and-bootstrap-part-1/

https://github.com/heartcombo/simple_form

Implement the ability for users to add, edit and delete a customer, project and task

Should a user have the ability to edit _any_ task? Or only the ones associated with them?

## Implement the ability for users to log how much time they work on a task
- Should I allow the user to toggle a timer (start / stop), or entire time worked manually?

New Features

User start a timer on task log
 - start / stop button
 - perhaps place it on edit / show? tbd 
 - chronjob?
 create new migration for taskslogs -- start_time t.datetime
 - should be able to edit the duration of time spent on a task

Scoping tasks to projects in view

Add a few unit tests!