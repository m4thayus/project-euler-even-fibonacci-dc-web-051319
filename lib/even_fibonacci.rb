# Implement your procedural solution here!

def fibonacci(n, m, lim)
    if m >= lim
        return m
    else
        return fibonacci(m, n + m, lim)
    end
end

puts fibonacci(0, 1, 89)
puts fibonacci(0, 1, 4000000)

def fibonacci_sum(n, m, sum, lim)
    if m >= lim
        return sum
    else
        sum = n + m + sum
        return fibonacci_sum(m, n + m, sum, lim)
    end
end

puts fibonacci_sum(0, 1, 0, 89)
puts fibonacci_sum(0, 1, 0, 4000000)

def fibonacci_even_sum(n, m, sum, lim)
    if m % 2 == 0
        sum = m + sum
    end
    if m >= lim
        return sum
    else
        return fibonacci_even_sum(m, n + m, sum, lim)
    end
end

puts fibonacci_even_sum(0, 1, 0, 89)
puts fibonacci_even_sum(0, 1, 0, 4000000)