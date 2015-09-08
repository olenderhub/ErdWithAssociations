require 'rails_helper'

RSpec.describe Sport, type: :model do
  it { expect(subject).to have_db_column(:name) }
end
