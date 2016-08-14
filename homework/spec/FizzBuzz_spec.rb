require 'minitest/autorun'
require_relative('../FizzBuzz.rb')

describe FizzBuzz do
  before do
    @fizzBuzz = FizzBuzz.new
  end

  describe 'say fizz buzz' do
    it 'say 3' do
      @fizzBuzz.sayFizzBuzz(3).must_equal "#{3}:Fizz"
    end

    it 'say 5' do
      @fizzBuzz.sayFizzBuzz(5).must_equal "#{5}:Buzz"
    end

    it 'say 9' do
      @fizzBuzz.sayFizzBuzz(9).must_equal "#{9}:Fizz"
    end

    it 'say 10' do
      @fizzBuzz.sayFizzBuzz(10).must_equal "#{10}:Buzz"
    end

    it 'say 15' do
      @fizzBuzz.sayFizzBuzz(15).must_equal "#{15}:Fizz#{15}:Buzz"
    end

  end
end