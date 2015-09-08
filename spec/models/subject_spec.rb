require 'rails_helper'

RSpec.describe Subject, type: :model do
  it { expect(subject).to have_db_column(:mark) }
  it { expect(subject).to validate_inclusion_of(:mark).in_range(1..6)}
end
