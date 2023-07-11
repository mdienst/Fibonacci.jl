using Fibonacci
using Test

n = [0, 1, 30]
f = [0, 1, 832040]

@test fibonacci(0)[1] == 0
@test fibonacci(1)[1] == 1
@test fibonacci(30)[1] == 832040

#for i = 1:length(n)
#    @test fibonacci(n[i])[1] == f[i]
#end

#@testset "Fibonacci.jl" begin
    # Write your tests here.
#end
