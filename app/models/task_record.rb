# == Schema Information
#
# Table name: task_records
#
#  id         :integer          not null, primary key
#  task_id    :integer
#  last_run   :datetime
#  message    :string
#  stacktrace :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TaskRecord < ApplicationRecord
  belongs_to :task
  def create_by_id id, message, stacktraces
  	TaskRecord.create(
  		task_id: id,
  		last_run: DateTime.now,
  		message: message,
  		stacktrace: stacktrace
  		)
  end
  def last_run_rec task_id
	TaskRecord.where(task_id: task_id).order("last_run desc").last
  end
  
end
