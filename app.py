from flask import Flask
import requests

app = Flask(__name__)

@app.route("/")
def index():
    x = requests.get("https://en.wikipedia.org/wiki/Natural_language_processing")
    return x.text

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)
else:
    gunicorn = app

