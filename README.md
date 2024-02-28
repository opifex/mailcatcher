# mailcatcher

Simple SMTP server with web interface for software engineers.

![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/opifex/mailcatcher/build.yml)
![GitHub License](https://img.shields.io/github/license/opifex/mailcatcher)
![Docker Image Size](https://img.shields.io/docker/image-size/opifex/mailcatcher)

## Features

- Catches outgoing email messages.
- Shows HTML, Plain Text and Source versions.
- Lists attachments and allows download them.

## Usage

You can run service with the next command.

```sh
$ docker run -d -p 1025:1025 -p 1080:1080 --name mailcatcher opifex/mailcatcher
```

## Interface

You can easily access web interface via url.

```
http://127.0.0.1:1080/
```
