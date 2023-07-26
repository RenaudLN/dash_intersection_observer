# AUTO GENERATED FILE - DO NOT EDIT

export dashintersectionobserver

"""
    dashintersectionobserver(;kwargs...)
    dashintersectionobserver(children::Any;kwargs...)
    dashintersectionobserver(children_maker::Function;kwargs...)


A DashIntersectionObserver component.
Component description
Keyword arguments:
- `children` (a list of or a singular dash component, string or number; required)
- `id` (String; optional): Unique ID to identify this component in Dash callbacks.
- `className` (String; optional): CSS class of the wrapping div.
- `delay` (Real; optional): Minimum delay between notifications, in milliseconds
- `inView` (Bool; optional): Whether the component is in the viewport (READONLY).
- `initialInView` (Bool; optional): Set the initial value of the inView boolean.
- `rootMargin` (String; optional): Margin around the root. Can have values similar to the CSS margin property.
- `style` (Bool | Real | String | Dict | Array; optional): Style of the wrapping div.
- `threshold` (Real; optional): Number between 0 and 1 indicating the percentage that should be visible before triggering.
- `triggerOnce` (Bool; optional): Only trigger the inView callback once if true.
"""
function dashintersectionobserver(; kwargs...)
        available_props = Symbol[:children, :id, :className, :delay, :inView, :initialInView, :rootMargin, :style, :threshold, :triggerOnce]
        wild_props = Symbol[]
        return Component("dashintersectionobserver", "DashIntersectionObserver", "dash_intersection_observer", available_props, wild_props; kwargs...)
end

dashintersectionobserver(children::Any; kwargs...) = dashintersectionobserver(;kwargs..., children = children)
dashintersectionobserver(children_maker::Function; kwargs...) = dashintersectionobserver(children_maker(); kwargs...)

