require 'spec_helper'

describe Book do
  Book.seed
  let(:blanks) { ['', nil] }

  it { should validate_presence_of(:title) } # shoulda-matchers
  it { should_not have_valid(:title).when(*blanks) } # valid_attribute

  it { should have_valid(:rating).when(*blanks) }
  it { should_not have_valid(:rating).when('h') }
  it { should_not have_valid(:rating).when(200) }
  it { should have_valid(:rating).when(75) }

  it { should have_many(:checkouts) }

  it { should have_many(:categories).through(:categorizations) }

  it 'should contain the seeded books including Purple Cow' do
    book = Book.new(title: 'Purple Cow', author: 'Seth Godin')
    expect(Book.where(title: book.title).first.id).to eql(1)
  end

end
