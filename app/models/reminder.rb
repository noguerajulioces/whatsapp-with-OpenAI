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
class Reminder < ApplicationRecord
  belongs_to :user

  validates :title, :scheduled_time, presence: true
  validates :status, inclusion: { in: %w[pending completed] }
end
