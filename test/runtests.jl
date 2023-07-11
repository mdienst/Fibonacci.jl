using Fibonacci
using Test

@testset "Fibonacci.jl" begin
    res = [(0,0),(1,1),(30,832040)]
    for (i,o) in res
        @test fibonacci(i)[1] == o
    end
end
