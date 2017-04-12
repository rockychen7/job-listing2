# == Schema Information
#
# Table name: jobs
#
#  id               :integer          not null, primary key
#  title            :string
#  description      :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  wage_upper_bound :integer
#  wage_lower_bound :integer
#  contact_email    :string
#  is_hidden        :boolean          default("t")
#

class Job < ApplicationRecord
  validates :title, presence: true
  validates :wage_upper_bound, presence: true
  validates :wage_lower_bound, presence: true
  validates :wage_lower_bound, numericality: { greater_than: 0 }

  scope :published, -> { where(is_hidden: false) }
  scope :recent, -> { order('created_at DESC') }
  		 has_many :resumes

  def publish!
     self.is_hidden = false
     save
   end

   def hide!
     self.is_hidden = true
     save
   end
end
