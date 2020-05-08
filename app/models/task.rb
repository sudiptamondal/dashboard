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
#  run_local   :boolean
#

require 'stack_overflow.rb'
require 'rufus-scheduler'
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
		if name == 'check_price'
			Product.each do |product|
				product_code = product.url.scan(/(product\/)([a-zA-Z0-9]+)(\?)/)[0][1]
				multi_store_url  = "https://www.amazon.in/gp/offer-listing/"+ product_code + "/ref=dp_olp_new?ie=UTF8&condition=new"
				response = Nokogiri::HTML.parse(open(multi_store_url))
				response.css(".olpOfferPrice").each do |single|
					single.scan(/(Rs. )([0-9,.]+)/)[0][1]
				end
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
