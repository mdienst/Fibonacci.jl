using Fibonacci
using Documenter

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
    ],
)

deploydocs(;
    repo="github.com/mdienst/Fibonacci.jl",
    devbranch="master",
)
