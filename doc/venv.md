# Virtual Environment

# Introduction

The `venv` module provides support for creating lightweight “virtual environments” with their own site directories, optionally isolated from system site directories. Each virtual environment has its own Python binary (which matches the version of the binary that was used to create this environment) and can have its own independent set of installed Python packages in its site directories.

To create a virtual environment, decide upon a directory where you want to place it, and run the `venv` module as a script with the directory path:

```sh
$ sudo apt-get install python3-venv
$ python3 -m venv .venv
```

This will create the `.venv` directory if it doesn’t exist, and also create directories inside it containing a copy of the Python interpreter and various supporting files.

Once you’ve created a virtual environment, you may activate it.

```sh
$ source .venv/bin/activate
(.venv) $
```

Activating the virtual environment will change your shell’s prompt to show what virtual environment you’re using, and modify the environment so that running python will get you that particular version and installation of Python.

You can deactivate a virtual environment by typing “deactivate” in your shell. 

```sh
(.venv) $ deactivate
$
```

## pip

To know more about `pip` read [pip](pip.md).

By default, only `pip` and `setuptools` are installed inside a new environment.

```sh
(.venv) $ pip list
Package    Version
---------- -------
pip        21.2.3
setuptools 57.4.0
```

If we want to install  a third party library, say  `requests`, we can just use `pip` as usual.

```sh
(.venv) $ python3 -m pip install --upgrade pip
(.venv) $ pip install requests
(.venv) $ pip list
Package            Version
------------------ ---------
certifi            2021.10.8
charset-normalizer 2.0.9
idna               3.3
pip                21.3.1
requests           2.26.0
setuptools         57.4.0
urllib3            1.26.7
```

Now we can import `requests` in a script or active Python shell.

## References

- [Virtual Environments and Packages](https://docs.python.org/3/tutorial/venv.html).
- [A Guide to Python’s Virtual Environments](https://towardsdatascience.com/virtual-environments-104c62d48c54)