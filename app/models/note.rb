# == Schema Information
#
# Table name: notes
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :string
#  alarm      :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Note < ApplicationRecord
end
