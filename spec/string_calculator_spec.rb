# frozen_string_literal: true

require_relative '../string_calculator'

RSpec.describe StringCalculator do
  describe '#add' do
    it 'returns 0 for an empty string' do
      calc = StringCalculator.new
      expect(calc.add('')).to eq(0)
    end
    it 'returns the number itself if only one number' do
      calc = StringCalculator.new
      expect(calc.add('1')).to eq(1)
    end
    it 'returns sum of two numbers separated by comma' do
      calc = StringCalculator.new
      expect(calc.add('1,5')).to eq(6)
    end
    it 'returns sum of multiple numbers' do
      calc = StringCalculator.new
      expect(calc.add('1,2,3,4')).to eq(10)
    end
    it 'handles new lines between numbers as delimiters' do
      calc = StringCalculator.new
      expect(calc.add("1\n2,3")).to eq(6)
    end
    it 'supports custom delimiters like ;' do
      calc = StringCalculator.new
      expect(calc.add("//;\n1;2")).to eq(3)
    end
    it 'raises an error for negative numbers' do
      calc = StringCalculator.new
      expect { calc.add('1,-2,3,-4') }.to raise_error('negative numbers not allowed -2,-4')
    end
  end
end
