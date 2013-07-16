require 'spec_helper'

describe Advertisement do
    context 'with valid advertisement' do
	  subject(:advertisement) { Advertisement.new(name: "Product", price: 100) }
	  its(:price) { should_not be_nil }
	  its(:name) { should == "Product"}
	  it { should be_valid }
	end

	context 'with invalid advertisement' do
	  it { should_not be_valid }
	end
end