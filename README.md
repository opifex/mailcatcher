# mailcatcher

Simple SMTP server with web interface for software engineers.

[![build](https://github.com/opifex/mailcatcher/actions/workflows/build.yml/badge.svg)](https://github.com/opifex/mailcatcher/actions/workflows/build.yml)

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
