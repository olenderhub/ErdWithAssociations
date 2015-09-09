require 'rails_helper'

RSpec.describe Employee, type: :model do
  it { expect(subject).to have_db_column(:full_name) }
  it { expect(subject).to have_and_belong_to_many(:companies) }
  it { expect(subject).to validate_presence_of(:companies) }
  it { expect(subject).to have_many(:pictures) }
end
