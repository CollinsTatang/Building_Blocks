module Enumerable
    def my_each
        return to_enum(:my_each) unless block_given?

        k = 0
        while k < to_a.length
            yield to_a[k]
            k += 1
        end
        self
    end