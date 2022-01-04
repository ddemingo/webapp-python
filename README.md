# README

You can browse this project hosted on Azure: [http://smx-1687.azurewebsites.net/](http://smx-1687.azurewebsites.net/)

## Development

### Virtual environment

The `venv` module provides support for creating lightweight “virtual environments” with their own site directories, optionally isolated from system site directories

```sh
$ sudo apt-get install python3-venv
$ python3 -m venv .venv
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
(.venv) $ python3 -m pip install --upgrade pip
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

Use your student account to create a free Azure account, as explained on [Campus "La Mercè"](https://campus.lamerce.com/azure.html).

Go to [Azure Shell](https://portal.azure.com/#cloudshell/), and create a service plan:
```sh
$ export name=smx-1687 # use a different id
$ export location=francentral

$ az group create --name $name --location $location
$ az appservice plan create --name $name --resource-group $name --location $location --is-linux --sku FREE
$ az webapp create --name $name --resource-group $name --plan $name --runtime "python|3.7"
```

To know your web app url:
```sh
$ az webapp list --query '[].defaultHostName' -o tsv
```

Deploy your application (use your github project url):
```
$ az webapp deployment source config --name $name --resource-group $name --repo-url "https://github.com/ddemingo/smx-8-webapp" --branch main --manual-integration
```
