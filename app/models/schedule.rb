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
    def get_tbd_schedules
        #do nothing
    end
    def match_day
        today = Date.today.strftime("%a")
        if (self.on_monday and today == "Mon") \
            or (self.on_tuesday and today == "Tue") \
            or (self.on_wednesday and today == "Wed") \
            or (self.on_thursday and today == "Thu") \
            or (self.on_friday and today == "Fri") \
            or (self.on_saturday and today == "Sat") \
            or (self.on_sunday and today == "Sun")
            true
        end
    end
end
