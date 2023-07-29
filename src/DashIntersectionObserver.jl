
module DashIntersectionObserver
using Dash

const resources_path = realpath(joinpath( @__DIR__, "..", "deps"))
const version = "1.0.1"

include("jl/dashintersectionobserver.jl")

function __init__()
    DashBase.register_package(
        DashBase.ResourcePkg(
            "dash_intersection_observer",
            resources_path,
            version = version,
            [
                DashBase.Resource(
    relative_package_path = "dash_intersection_observer.js",
    external_url = "https://unpkg.com/dash_intersection_observer@1.0.1/dash_intersection_observer/dash_intersection_observer.js",
    dynamic = nothing,
    async = nothing,
    type = :js
),
DashBase.Resource(
    relative_package_path = "dash_intersection_observer.js.map",
    external_url = "https://unpkg.com/dash_intersection_observer@1.0.1/dash_intersection_observer/dash_intersection_observer.js.map",
    dynamic = true,
    async = nothing,
    type = :js
)
            ]
        )

    )
end
end
