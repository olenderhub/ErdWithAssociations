require 'rails_helper'

RSpec.describe Product, type: :model do
  it { expect(subject).to have_db_column(:name) }
  it { expect(subject).to have_many(:pictures) }
end
