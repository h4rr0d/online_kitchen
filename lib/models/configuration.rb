# == Schema Information
#
# Table name: configurations
#
#  id         :integer          not null, primary key
#  name       :string           default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Configuration < ActiveRecord::Base
  has_many :machines, inverse_of: :configuration

  validates :name, presence: true, uniqueness: true, length: {minimum: 3}

  strip_attributes
end
