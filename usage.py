import dash_intersection_observer
import dash

app = dash.Dash(__name__)

app.layout = dash_intersection_observer.DashIntersectionObserver(id='component')


if __name__ == '__main__':
    app.run_server(debug=True)
