# Supported tags and respective `Dockerfile` links

# How to use this image

```console
$ docker run --name tagspaces -p 80:80 -v /media:/media -d phreakazoid/tagspaces-webdav
```
This will start a webdav server listening on the default port of 80.
Then access it via `http://localhost:80` or `http://host:80` in a browser.

This server will serve files located in your /media folder

Image's supported volumes:
- `/media` - served directory

To restrict access to only authorized users, you can define two environment variables: `USERNAME` and `PASSWORD`
```console
$ docker run --name webdav -p 80:80 -v /media:/media -e USERNAME=webdav -e PASSWORD=webdav -d sashgorokhov/webdav
```

# Supported Docker versions

This image is officially supported on Docker version 1.10.2.
Support for older versions (down to 1.6) is provided on a best-effort basis.
Please see [the Docker installation documentation](https://docs.docker.com/installation/) for details on how to upgrade your Docker daemon.
