require 'rails_helper'

RSpec.describe Location, type: :model do

  it 'has a valid fabricator' do
    expect(Fabricate :location).to be_valid
  end

  let(:location) { Fabricate :location }

  describe 'ActiveModel validations' do
    subject { location }
    it { is_expected.to validate_presence_of(:place_id) }
    it { is_expected.to validate_presence_of(:lat) }
    it { is_expected.to validate_presence_of(:lng) }
    it { is_expected.to validate_presence_of(:name) }
  end
end