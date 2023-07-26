import time
from dash import Input, Dash, Output, State, callback, html
from dash_intersection_observer import DashIntersectionObserver

app = Dash(__name__)

app.layout = html.Div(
    [
        html.Div(style={"height": "100vh", "background": "lightgray"}),
        DashIntersectionObserver(
            html.Div(id="child"),
            id="observer",
            style={"background": "lightgray", "height": 200},
            triggerOnce=True,
            threshold=0.5,
        ),
    ],
    style={"display": "grid", "gap": "1rem"}
)


@callback(
    Output("child", "children"),
    Input("observer", "inView"),
)
def update_child(inView):
    time.sleep(0.5)
    return str(inView)


if __name__ == '__main__':
    app.run_server(debug=True)
