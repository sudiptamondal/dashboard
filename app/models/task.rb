# == Schema Information
#
# Table name: tasks
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  active      :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'stack_overflow.rb'
class Task < ApplicationRecord
	def run_task name
		stacktrace = nil
		message = 'Success'
		if name == 'stackoverflow'
			begin
				soflow = SO::StackOverflow.new
				soflow.login
			rescue Exception => e
				message = 'Failed'
				stacktrace = e.message
			end
		end
		if name == 'check_followers'
			begin
				
			rescue Exception => e
				message = 'Failed'
				stacktrace = e.message			
			end
		end
		set_record name, message, stacktrace
	end

	private
		def find_id_by_name name
			task = Task.where(name: name).first
			unless task.blank? 
				task.id
			else
				nil
			end
		end

		def set_record name, message, stacktrace
			id = Task.find_id_by_name name
			unless id.blank? 
				record = TaskRecord.create_by_id(id, message, stacktrace)
			end
		end

end
