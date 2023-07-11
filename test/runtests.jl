using Fibonacci
using Test



#for i = 1:length(n)
#    @test fibonacci(n[i])[1] == f[i]
#end

@testset "Fibonacci.jl" begin
    res = [(0,0),(1,1),(30,832040)]
    for (i,o) in res
        @test fibonacci(i)[1] == o
    end
# Write your tests here.
end
