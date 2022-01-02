from flask import Flask
from flask import request
from flask import render_template
import feedparser

app = Flask(__name__)

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
