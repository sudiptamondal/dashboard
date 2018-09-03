# == Schema Information
#
# Table name: schedules
#
#  id                  :integer          not null, primary key
#  is_scheduled        :boolean
#  schedule_start_date :datetime
#  schedule_end_date   :datetime
#  what                :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  on_monday           :boolean
#  on_tuesday          :boolean
#  on_wednesday        :boolean
#  on_thursday         :boolean
#  on_friday           :boolean
#  on_saturday         :boolean
#  on_sunday           :boolean
#  repeat              :boolean
#  custom              :text
#  what_id             :integer
#

class Schedule < ApplicationRecord
end
