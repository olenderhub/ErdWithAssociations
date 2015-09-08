require 'rails_helper'

RSpec.describe Payment, type: :model do
  it { expect(subject).to have_db_column(:amount) }
end
