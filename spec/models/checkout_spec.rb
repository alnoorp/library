require 'spec_helper'

describe Checkout do
  let(:blanks) { ['', nil] }

  it { should_not have_valid(:book_id).when(*blanks) }
  it { should_not have_valid(:checkout_date).when(*blanks) }
  it { should_not have_valid(:return_date).when(*blanks) }
  it { should_not have_valid(:checkout_date).when('hello') }
  it { should_not have_valid(:return_date).when('hello') }
  it { should have_valid(:checkout_date).when(Time.now) }
  it { should have_valid(:return_date).when(Time.now + 4.weeks) }

end
