Overview:

We’d like you to build a task-tracking application. You’ll do some preparation work ahead of time to get your application at a good starting point. During your live code day, you’ll work with our team to complete the project. At the end of the day, you'll present to our team what you accomplished, and you'll have the chance to ask questions and get to know the team better.

Before You Arrive:

During your code day, you'll build an application for tracking task work on projects. To make the most of your time on-site, we'd like you to arrive with some basic functionality already up and running. To prepare for the project:

• Set up your laptop and get a web framework running
• Configure a database connection and a schema based on the attached schema diagram
• Implement the ability for users to login with authentication and authorization
• Implement the ability for users to add, edit and delete a customer, project and task
• Seed your database with projects, customers and tasks (no admin interface is necessary)
• Implement the ability for users to log how much time they work on a task

## Configure a database connection and a schema based on the attached schema diagram
- Is PostgreSQL okay?

## Implement the ability for users to login with authentication and authorization
- I think I may use Devise, Rolify, and CanCanCan for this.

## Seed your database with projects, customers and tasks (no admin interface is necessary)
- Definitely use Faker?
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
Devise
Better Errors

# Styling
Bootstrap fooorrrr sure
[Bootstrap](https://www.digitalocean.com/community/tutorials/how-to-add-bootstrap-to-a-ruby-on-rails-application)



###### From Devise

Depending on your application's configuration some manual setup may be required:

  1. Ensure you have defined default url options in your environments files. Here
     is an example of default_url_options appropriate for a development environment
     in config/environments/development.rb:

       config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

     In production, :host should be set to the actual host of your application.

     * Required for all applications. *

  2. Ensure you have defined root_url to *something* in your config/routes.rb.
     For example:

       root to: "home#index"
     
     * Not required for API-only Applications *

  3. Ensure you have flash messages in app/views/layouts/application.html.erb.
     For example:

       <p class="notice"><%= notice %></p>
       <p class="alert"><%= alert %></p>

     * Not required for API-only Applications *

  4. You can copy Devise views (for customization) to your app by running:

       rails g devise:views
       
     * Not required *