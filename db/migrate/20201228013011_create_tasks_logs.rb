class CreateTasksLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks_logs do |t|
      t.belongs_to :task, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true
      t.float :duration
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
