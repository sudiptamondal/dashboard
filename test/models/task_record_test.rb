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

require 'test_helper'

class TaskRecordTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
