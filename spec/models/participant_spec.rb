# == Schema Information
#
# Table name: participants
#
#  id          :bigint           not null, primary key
#  age         :integer          not null
#  date        :date             not null
#  height      :integer          not null
#  weight      :integer          not null
#  eye_color   :string           not null
#  hair_color  :string           not null
#  hair_length :integer          not null
#  shoe_size   :integer          not null
#  type        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint           not null
#

require 'rails_helper'

RSpec.describe Participant, type: :model do
  it { should validate_presence_of (:age) }
  it { should validate_presence_of (:date) }
  it { should validate_presence_of (:height) }
  it { should validate_presence_of (:weight) }
  it { should validate_presence_of (:eye_color) }
  it { should validate_presence_of (:hair_color) }
  it { should validate_presence_of (:hair_length) }
  it { should validate_presence_of (:shoe_size) }
  it { should validate_presence_of (:type) }

  it { should belong_to(:user) }

end
