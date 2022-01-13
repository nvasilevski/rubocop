# frozen_string_literal: true

module RuboCop
  module Cop
    class Puknul
      def self.write(cop, time)
        @data ||= Hash.new { |h,k| h[k] = 0 }
        @data[cop] += time
      end

      def self.data
        @data
      end
    end
  end
end
