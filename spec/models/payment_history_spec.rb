require 'rails_helper'

RSpec.describe PaymentHistory, type: :model do
  it { expect(subject).to have_db_column(:credit_rating) }
  it { expect(subject).to belong_to(:payment) }
  it { expect(subject).to validate_inclusion_of(:credit_rating).in_range(1..10) }
  it { expect(subject).to validate_presence_of(:payment) }
end
