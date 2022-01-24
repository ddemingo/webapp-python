from flask import Flask
from flask import request
from flask import render_template

app = Flask(__name__)


@app.route("/", defaults = {'template':'index'})
@app.route("/<template>")
def get_root(template):
    
    return render_template(f"/{template}.html")


@app.route("/form/")
def get_news():
    return "Hello"


