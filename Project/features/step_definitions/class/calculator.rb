class Calculator
    attr_accessor :sum, :args

    def initialize
        @sum = 0
    end

    def push(n)
        @args ||= []
        @args << n
    end

    def add_the_numbers
        @sum = @args.inject(0) { |sum, n| sum + n }
    end

end