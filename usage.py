import random
import time

import plotly.express as px
from dash import Input, Dash, Output, callback, dcc, html, no_update, MATCH
from dash_intersection_observer import DashIntersectionObserver

app = Dash(__name__)

app.layout = html.Div(
    [
        html.Div(
            [
                html.H3(f"Graph {i + 1}"),
                dcc.Loading(
                    DashIntersectionObserver(
                        html.Div(style={"background": "lightgray", "height": "100%"}),
                        id={"type": "observer", "index": i},
                        triggerOnce=True,
                        style={"height": 450},
                        threshold=0.25,
                    ),
                ),
            ]
        )
        for i in range(20)
    ],
    style={"display": "grid", "gap": "1rem", "margin": "0 auto", "maxWidth": 800}
)


@callback(
    Output({"type": "observer", "index": MATCH}, "children"),
    Input({"type": "observer", "index": MATCH}, "inView"),
)
def update_child(in_view):
    if not in_view:
        return no_update

    time.sleep(1)
    figure = px.line(y=[random.random() for _ in range(10)]).update_layout(
        margin={"l": 0, "b": 0, "t": 0, "r": 0},
    )
    return dcc.Graph(figure=figure)


if __name__ == '__main__':
    app.run_server(debug=True)
