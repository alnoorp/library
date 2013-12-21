require 'spec_helper'

describe Category do
  let(:blanks) { ['', nil] }
  Category.seed

  it { should have_valid(:name).when('Comedy') }
  it { should_not have_valid(:name).when(*blanks) }
  it { should validate_uniqueness_of(:name) }

  it 'should contain the seeded categories' do
    category = Category.new(name: 'Fiction')
    expect(Category.where(name: 'Fiction').first.id).to eql(1)
  end
end
