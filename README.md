# README

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

Test `user` url endpoint:
```sh
$ curl -v http://localhost:5000/user/1
{
  "1": "david"
}
```

## Azure

Deploy in a sandbox environment:

```sh
$ ./azure.sh sandbox
$ ./azure.sh login
$ ./azure.sh deploy
```

Browse:

```sh
$ ./azure browse
```

## Google cloud

You can browse this project hosted on Google Cloud: [https://webapp-python3.ew.r.appspot.com](https://webapp-python3.ew.r.appspot.com)

You can deploy this app to [Google Cloud](https://console.cloud.google.com).

First, create a project:

```sh
$ gcloud auth login
$ gcloud projects create <project-id>
$ gcloud config set project <project-id>
```

Deploy the app:

```sh
$ gcloud app deploy
```

## Tools

[Virtual Environment](venv.md). The `venv` module provides support for creating lightweight “virtual environments” with their own site directories, optionally isolated from system site directories. Each virtual environment has its own Python binary (which matches the version of the binary that was used to create this environment) and can have its own independent set of installed Python packages in its site directories.

[pip](pip.md).

[VSCode](vscode.md) .Working with Python in Visual Studio Code, using the [Microsoft Python extension](https://marketplace.visualstudio.com/items?itemName=ms-python.python), is simple, fun, and productive. The extension makes VS Code an excellent Python editor, and works on any operating system with a variety of Python interpreters. It leverages all of VS Code's power to provide auto complete and IntelliSense, linting, debugging, and unit testing, along with the ability to easily switch between Python environments, including virtual and conda environments.

