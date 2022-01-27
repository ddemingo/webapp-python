---
title: "Deploy"
---

## Google Cloud

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