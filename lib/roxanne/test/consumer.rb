module Roxanne
  module Test
    class Consumer
      def pull
        @previous = if @previous.nil?
          :green
        elsif @previous == :green
          :red
        elsif @previous == :red
          :orange
        else
          :green
        end
      end
    end
  end
end