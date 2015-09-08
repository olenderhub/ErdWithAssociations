require 'rails_helper'

RSpec.describe Client, type: :model do
  it { expect(subject).to have_db_column(:first_name) }
  it { expect(subject).to have_db_column(:last_name) }
  it { expect(subject).to have_db_column(:age) }
  it { expect(subject).to have_db_column(:phone_number) }
  it { expect(subject).to have_db_column(:email) }
  it { expect(subject).to have_one(:payment) }
end
