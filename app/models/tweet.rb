# == Schema Information
#
# Table name: tweets
#
#  id          :integer          not null, primary key
#  tweet       :string
#  description :string
#  status      :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Tweet < ApplicationRecord
  has_one :schedule, foreign_key: :what_id, dependent: :destroy
  accepts_nested_attributes_for :schedule
	before_save :set_attr
	private
		def set_attr
				self.schedule.what = self.class.name
		end


end
