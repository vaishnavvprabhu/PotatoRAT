from flask import flask

app = flask(__name__)

@app.route("/")
def index():
    return "Congratulations, it's a web app!"