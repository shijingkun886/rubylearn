require 'minitest/autorun'
require_relative('../SoftWrap.rb')

describe SoftWrap do
  before do
    @softWrap = SoftWrap.new
  end

  let text = 'this is your favourate food '

  describe 'test the text' do
    it 'this is your favourate food in 10 length' do
      @softWrap.wrap(text,10).must_equal "this is \nyour \nfavourate \nfood"
    end

    it 'this is your favourate food in 15 length' do
      @softWrap.wrap(text,15).must_equal "this is your \nfavourate food"
    end

    it 'this is your favourate food in 22 length' do
      @softWrap.wrap(text,22).must_equal "this is your favourate \nfood"
    end
  end


end