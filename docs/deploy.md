# Deploy

## Google Cloud

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