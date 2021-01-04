class Task < ApplicationRecord
  belongs_to :project
  has_many :tasks_logs
  has_many :users, through: :task_logs
end
