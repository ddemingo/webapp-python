# README

You can browse this project hosted on Google Cloud: [https://webapp-python3.ew.r.appspot.com](https://webapp-python3.ew.r.appspot.com)

## Getting started

Create a Github account, connect with ssh, and fork this project. To know how to it go to: [Tools/Github](https://github.com/ddemingo/tools/blob/main/github.md)

To know more about pyhton go to: [https://github.com/ddemingo/python/](https://github.com/ddemingo/pyhton/)

If you don't have sudo rights, then add `~/.local/bin` to your `$PATH` (if needed) and install 

```sh
$ echo 'export PATH="$HOME/.local/bin:$PATH"' >> $HOME/.bash_profile
$ source $HOME/.bash_profile
$ pip install --user -r requirements_dev.txt
```

If you have sudo rights, use a virtual environment:

```sh
$ sudo apt install python3-venv
$ python3 -m venv .venv
$ source .venv/bin/activate
(.venv) $ python3 -m pip install --upgrade pip
(.venv) $ pip install -r requirements_dev.txt
```

Start the web app:

```sh
$ flask run
* Environment: production
  ...
* Running on http://127.0.0.1:5000/ (Press CTRL+C to quit)
```

Fire up a web browser and navigate to `http://localhost:5000`




