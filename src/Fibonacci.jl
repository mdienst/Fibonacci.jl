# https://gist.github.com/t-nissie/641df996b9035f85b230? 
permalink_comment_id = 2211339#gistcomment-2211339

module Fibonacci

export fibonacci

"""
    fibonacci(n)

Return the 'n'-th and 'n+1'-st number of Fibonacci sequence.

# Examples
```jldoctest
julia> fibonacci(2)
(1, 2)
```
"""
function fibonacci end

fibonacci(n::Int) = fibonacci(BigInt(n))
function fibonacci(n::BigInt)
    if n == 0
        return BigInt(0), BigInt(1)
    else
        a, b = fibonacci(div(n, 2))
        c = a * (b * BigInt(2) - a)
        d = a * a + b * b

        if iseven(n)
            return (c, d)
        else
            return (d, c + d)
        end
    end
end
end # module Fibonacci
