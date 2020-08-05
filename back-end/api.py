from flask import Flask, request, jsonify
from scraper import run

app = Flask(__name__)
app.config["DEBUG"] = True

items = []

@app.route('/news-items', methods=['GET'])
def api_all():
    global items
    if not items:
        items = run()
    response = jsonify(items)
    response.headers.add("Access-Control-Allow-Origin", "*")
    return response

app.run()