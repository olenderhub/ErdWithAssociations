require 'rails_helper'

RSpec.describe Picture, type: :model do
  it { expect(subject).to have_db_column(:name) }
  it { expect(subject).to have_db_column(:imageable_id) }
  it { expect(subject).to belong_to(:imageable) }
  it { expect(subject).to validate_presence_of(:imageable) }
end
