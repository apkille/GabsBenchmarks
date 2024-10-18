using Revise # for interactive work on docs
push!(LOAD_PATH,"../src/")

using Documenter
using DocumenterCitations
using Gabs
using GabsBenchmarks

DocMeta.setdocmeta!(GabsBenchmarks, :DocTestSetup, :(using GabsBenchmarks); recursive=true)

function main()

    makedocs(
    doctest = false,
    clean = true,
    sitename = "GabsBenchmarks.jl",
    format = Documenter.HTML(
        assets=["assets/init.js"],
        canonical = "https://apkille.github.io/GabsBenchmarks.jl"
    ),
    modules = [GabsBenchmarks],
    checkdocs = :exports,
    warnonly = false,
    authors = "Andrew Kille",
    pages = [
        "GabsBenchmarks.jl" => "index.md"
    ]
    )

    deploydocs(
        repo = "github.com/apkille/GabsBenchmarks.jl.git"
    )
end

main()
