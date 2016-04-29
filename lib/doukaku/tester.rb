require "doukaku/tester/version"

module Doukaku
  module Tester
    def run(data)
      data.each do |line|
        test *line.split
      end
      puts
    end

    def test(input, expected)
      actual = solve(input)
      if actual == expected
        print '.'
      else
        puts <<-EOS
input:    #{input}
expected: #{expected}
actual:   #{actual}
EOS
      end
    end
  end
end
