from flask import Flask
from flask import request
from flask import render_template
import feedparser
import json

app = Flask(__name__)


@app.route("/", defaults = {'template':'index'})
@app.route("/<template>")
def get_root(template):
    
    return render_template(f"/{template}.html")

@app.route("/biodiversity/", defaults = {'template':'index'})
@app.route("/biodiversity/<template>")
def get_biodiversity(template):
    
    return render_template(f"/biodiversity/{template}.html")


RSS_FEEDS = {'bbc': 'http://feeds.bbci.co.uk/news/rss.xml',
             'cnn': 'http://rss.cnn.com/rss/edition.rss',
             'fox': 'http://feeds.foxnews.com/foxnews/latest',
             'iol': 'https://rss.iol.io/iol/news'}

@app.route("/news/")
def get_news():
    query = request.args.get("publication")
    if not query or query.lower() not in RSS_FEEDS:
        publication = "bbc"
    else:
        publication = query
    feed = feedparser.parse(RSS_FEEDS[publication])
    return render_template("news.html", articles=feed['entries'])

USERS = {1: 'david', 2: 'eva'}

@app.route("/user/<int:id>")
def user(id):
    user = USERS.get(id)
    return {id: user}


