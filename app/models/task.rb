class Task < ApplicationRecord
  belongs_to :project
  has_many :tasks_logs
  has_many :users, through: :tasks_logs
  accepts_nested_attributes_for :tasks_logs
end
