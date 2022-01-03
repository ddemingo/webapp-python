# README

You can browse this hosted project at:
https://asix-cloud.ew.r.appspot.com/


## Development

### Virtual environment

The `venv` module provides support for creating lightweight “virtual environments” with their own site directories, optionally isolated from system site directories

```sh
sudo apt install python3-venv    # If needed
python -m venv .venv
```

Activate the virtual environment:
```sh
$ source .venv/bin/activate
(.venv) $
```

You can deactivate the virtual environment:
```sh
(.venv) $ deactivate
$
```

### Install requirements

```sh
(.venv) $ python -m pip install --upgrade pip
(.venv) $ pip install -r requirements_dev.txt
```

### Run the Wep App

To run our development server, execute `flask run`:
```sh
(.venv) $ flask run
* Environment: production
  ...
* Running on http://127.0.0.1:5000/ (Press CTRL+C to quit)
```

Fire up a web browser and navigate to `http://localhost:5000`

## Hosting

