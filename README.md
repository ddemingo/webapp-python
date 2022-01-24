# README

You can browse this project hosted on Google Cloud: [https://webapp-python3.ew.r.appspot.com](https://webapp-python3.ew.r.appspot.com)

## Get started

Clone this project:

```sh
$ git config --global http.sslVerify "false" # only at school!
$ git clone https://github.com/lamerce/webapp-python.git
```

If you don't have sudo rights, then add `~/.local/bin` to your `$PATH` (if needed) and install 

```sh
$ echo 'export PATH="$HOME/.local/bin:$PATH"' >> $HOME/.bashrc
$ source $HOME/.bashrc
$ cd webapp-python
$ pip install --user -r requirements-dev.txt
```

If you have sudo rights, use a virtual environment:

```sh
$ sudo apt install python3-venv
$ cd webapp-python
$ python3 -m venv .venv
$ source .venv/bin/activate
(.venv) $ python3 -m pip install --upgrade pip
(.venv) $ pip install -r requirements-dev.txt
```

Start the web app:

```sh
$ flask run
* Environment: production
  ...
* Running on http://127.0.0.1:5000/ (Press CTRL+C to quit)
```

Fire up a web browser and navigate to [http://localhost:5000](http://localhost:5000)

## Documentation

[HTML](docs/html.md). To build websites, you should know about [HTML](https://developer.mozilla.org/en-US/docs/Glossary/HTML) — the fundamental technology used to define the structure of a webpage. HTML is used to specify whether your web content should be recognized as a paragraph, list, heading, link, image, multimedia player, form, or one of many other available elements or even a new element that you define

[CSS](docs/css.md). It's a stylesheet language used to describe the presentation of a document written in HTML or XML (including XML dialects such as SVG, MathML or XHTML). CSS describes how elements should be rendered on screen, on paper, in speech, or on other media.

[Bootstrap](docs/bootstrap.md). It's a free and open-source CSS framework directed at responsive, mobile-first front-end web development. It contains CSS- and (optionally) JavaScript-based design templates for typography, forms, buttons, navigation, and other interface components.

[Python](docs/python.md). Python is a programming language that lets you work quickly and integrate systems more effectively.



