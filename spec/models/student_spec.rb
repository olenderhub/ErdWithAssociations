require 'rails_helper'

RSpec.describe Student, type: :model do
  it { expect(subject).to have_db_column(:full_name) }
end
