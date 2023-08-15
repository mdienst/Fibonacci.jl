using Fibonacci
using Documenter

const LIVE_MODE = "LIVE_MODE" in ARGS
if LIVE_MODE
using Revise
Revise.revise()
end

using Literate
LIT_MD_OUT = joinpath(@__DIR__, "src", "generated")
rm(LIT_MD_OUT; recursive = true, force = true)
LIT_IN = ["example.jl"]
LIT_IN .= joinpath.(@__DIR__, "src", "literate", LIT_IN)
Literate.markdown.(LIT_IN, LIT_MD_OUT)

DocMeta.setdocmeta!(Fibonacci, :DocTestSetup, :(using Fibonacci); recursive=true)

makedocs(;
    modules=[Fibonacci],
    authors="Manuel Dienst <manuel.dienst@student.uni-siegen.de> and contributors",
    repo="https://github.com/mdienst/Fibonacci.jl/blob/{commit}{path}#{line}",
    sitename="Fibonacci.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://mdienst.github.io/Fibonacci.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
        "tutorial.md",
        "Examples" => [
            "example.md",
            joinpath("generated", "example.md"),
        ]
    ],
)

if !LIVE_MODE
    deploydocs(;
        repo="github.com/mdienst/Fibonacci.jl",
        devbranch="master",
    )
end
