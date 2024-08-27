# == Schema Information
#
# Table name: users
#
#  id           :bigint           not null, primary key
#  name         :string
#  phone_number :string
#  settings     :jsonb
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class User < ApplicationRecord
  has_many :reminders
  has_many :messages

  validates :name, :phone_number, presence: true
  validates :phone_number, uniqueness: true
end
