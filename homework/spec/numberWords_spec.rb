require 'minitest/autorun'
require_relative('../numberWords.rb')

describe Number2Words do
  before do
    @n2w = Number2Words.new
  end

  describe 'number is less than 20' do
    it '18 to words' do
      @n2w.getNumberWords(18).must_equal 'eighteen.'
    end

    it '10 to words' do
      @n2w.getNumberWords(10).must_equal 'ten.'
    end

    it '5 to words' do
      @n2w.getNumberWords(5).must_equal 'five.'
    end

  end

  describe 'number is larger than 20 and less than 1000' do
    it '64 to words' do
      @n2w.getNumberWords(64).must_equal 'sixty four.'
    end

    it '123 to words' do
      @n2w.getNumberWords(123).must_equal 'one hundred and twenty three.'
    end

  end

  describe 'number is larger than 1000' do
    it '1024 to number' do
      @n2w.getNumberWords(1024).must_equal 'one thousand, twenty four.'
    end

    it '10,241,024,112 to number' do
      @n2w.getNumberWords(10241024112).must_equal 'ten billions, two hundreds and fourty one millions, twenty four thousands, one hundred and twelve.'
    end
  end

end