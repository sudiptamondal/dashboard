# require 'stack_overflow.rb'
class AutomateController < ApplicationController
	def soflow
	  soflow = SO::StackOverflow.new
	  soflow.login		
	end
end
