# == Schema Information
#
# Table name: reminders
#
#  id             :bigint           not null, primary key
#  title          :string
#  scheduled_time :datetime
#  status         :string
#  user_id        :bigint           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
require "test_helper"

class ReminderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
