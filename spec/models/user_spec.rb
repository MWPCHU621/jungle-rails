require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Validations' do

    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should have_secure_password() }
    it { should validate_uniqueness_of(:email).case_insensitive }
    it { should validate_numericality_of(:password_digest).is_greater_than_or_equal_to(5) }

  end
end
