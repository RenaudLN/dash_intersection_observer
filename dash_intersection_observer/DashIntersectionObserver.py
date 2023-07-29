# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class DashIntersectionObserver(Component):
    """A DashIntersectionObserver component.
Component description

Keyword arguments:

- children (a list of or a singular dash component, string or number; optional)

- id (string; optional):
    Unique ID to identify this component in Dash callbacks.

- className (string; optional):
    CSS class of the wrapping div.

- delay (number; optional):
    Minimum delay between notifications, in milliseconds.

- inView (boolean; optional):
    Whether the component is in the viewport (READONLY).

- inViewCount (number; optional):
    Number of times the component has been in the viewport.

- initialInView (boolean; optional):
    Set the initial value of the inView boolean.

- rootMargin (string; optional):
    Margin around the root. Can have values similar to the CSS margin
    property.

- style (boolean | number | string | dict | list; optional):
    Style of the wrapping div.

- threshold (number; optional):
    Number between 0 and 1 indicating the percentage that should be
    visible before triggering.

- triggerOnce (boolean; optional):
    Only trigger the inView callback once if True."""
    _children_props = []
    _base_nodes = ['children']
    _namespace = 'dash_intersection_observer'
    _type = 'DashIntersectionObserver'
    @_explicitize_args
    def __init__(self, children=None, threshold=Component.UNDEFINED, delay=Component.UNDEFINED, rootMargin=Component.UNDEFINED, triggerOnce=Component.UNDEFINED, initialInView=Component.UNDEFINED, style=Component.UNDEFINED, className=Component.UNDEFINED, inView=Component.UNDEFINED, inViewCount=Component.UNDEFINED, id=Component.UNDEFINED, **kwargs):
        self._prop_names = ['children', 'id', 'className', 'delay', 'inView', 'inViewCount', 'initialInView', 'rootMargin', 'style', 'threshold', 'triggerOnce']
        self._valid_wildcard_attributes =            []
        self.available_properties = ['children', 'id', 'className', 'delay', 'inView', 'inViewCount', 'initialInView', 'rootMargin', 'style', 'threshold', 'triggerOnce']
        self.available_wildcard_properties =            []
        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs and excess named props
        args = {k: _locals[k] for k in _explicit_args if k != 'children'}

        super(DashIntersectionObserver, self).__init__(children=children, **args)
