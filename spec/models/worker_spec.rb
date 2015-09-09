require 'rails_helper'

RSpec.describe Worker, type: :model do
  it { expect(subject).to have_db_column(:full_name) }
  it { expect(subject).to have_many(:subordinates) }
  it { expect(subject).to belong_to(:manager) }
end
