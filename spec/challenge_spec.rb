# frozen_string_literal: true

require_relative '../lib/challenge'

RSpec.describe Challenge do
  subject { Challenge }

  describe '.find_missing_number' do
    describe 'when a sequence has missing values' do
      describe 'when using [4, 3, 6, 2, 1, 7] as input' do
        let(:input) { [4, 3, 6, 2, 1, 7] }
        [
          { nth: 1, expected: 5 },
          { nth: 2, expected: 8 },
          { nth: 3, expected: 9 },
          { nth: 100, expected: 106 }

        ].each do |test_case|
          it "returns #{test_case[:expected]} for nth=#{test_case[:nth]}" do

            result = subject.find_missing_number(input, nth: test_case[:nth])
            expect(result).to eq(test_case[:expected])
          end
        end
      end
      describe 'when using [4, 3, 6, 2, 1, 7, 9] as input' do
        let(:input) { [4, 3, 6, 2, 1, 7, 9] }

        [
          { nth: 1, expected: 5 },
          { nth: 2, expected: 8 },
          { nth: 3, expected: 10 },
          { nth: 4, expected: 11 }
        ].each do |test_case|
          it "returns #{test_case[:expected]} for nth=#{test_case[:nth]}" do

            result = subject.find_missing_number(input, nth: test_case[:nth])
            expect(result).to eq(test_case[:expected])
          end
        end
      end
    end

    describe 'when has no missing values' do
      describe 'when using [4, 3, 6, 2, 1, 5] as input' do
        let(:input) { [4, 3, 6, 2, 1, 5] }
        [
          { nth: 1, expected: 7 },
          { nth: 2, expected: 8 },
          { nth: 3, expected: 9 },
          { nth: 100, expected: 106 }

        ].each do |test_case|
          it "returns #{test_case[:expected]} for nth=#{test_case[:nth]}" do

            result = subject.find_missing_number(input, nth: test_case[:nth])
            expect(result).to eq(test_case[:expected])
          end
        end
      end
    end

  end
end