# frozen_string_literal: true

class Challenge
  # frozen_string_literal: true

  # @param [Array] arr
  # @param [Integer] nth
  # @return [Integer]
  def self.find_missing_number(arr, nth: 1)
    return nil if arr.empty?

    # could just make a arr.max
    max = 0
    arr.each do |num|
      max = num if max < num
    end

    # the values with 0 index are the ones missing in the sequence
    counting_array = Array.new(max + 1) { 0 }

    arr.each do |num|
      counting_array[num] += 1
    end

    encounters = 1

    counting_array = counting_array.drop(1)

    counting_array.each_with_index do |num, index|
      next unless num.zero?
      return index + 1 if encounters == nth

      encounters += 1
    end

    next_number = nth - encounters + 1

    max + next_number
  end
end
