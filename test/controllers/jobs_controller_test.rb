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
#  is_hidden        :boolean          default(TRUE)
#  city             :string
#  company          :string
#  category         :string
#

require 'test_helper'

class JobsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
end
