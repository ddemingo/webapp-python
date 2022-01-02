# README

https://asix-cloud.ew.r.appspot.com/

## Develpment

```sh
sudo apt install python3-venv    # If needed
python -m venv .venv
source .venv/bin/activate

python -m pip install --upgrade pip
pip install -r requirements.txt
```


To run our development server, run `flask`:
```sh
$ flask run
* Environment: production
  ...
* Running on http://127.0.0.1:5000/ (Press CTRL+C to quit)
```

Fire up a web browser and navigate to `localhost:5000`, or use `curl` instead:
```
$ curl http://localhost:5000
Hello, World!
```


```sh
$ deactivate
```

## Hosting

