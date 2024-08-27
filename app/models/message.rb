# == Schema Information
#
# Table name: messages
#
#  id           :bigint           not null, primary key
#  content      :text
#  message_type :string
#  user_id      :bigint           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Message < ApplicationRecord
  belongs_to :user

  validates :content, :message_type, presence: true
end
