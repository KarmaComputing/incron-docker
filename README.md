# Docker inotify using incron

Performs actions based on filesystem events on bind mountpoints
and/or on internal filesystem.

> Note since bind mounts are supported, you may 'watch' filesystem events
  which may have been initiated by another container writing to the same
  mount point(s) for example.

## Build

```
podman build --tag incron .
```

## Run example

Watch an `emails` directory from a bind mount.

```
podman run -v $PWD/emails:/root/emails -it test sh
```


# See also

- https://man.archlinux.org/man/incrond.8.en
- https://man.archlinux.org/man/incrontab.5.en
- https://hub.docker.com/r/pstauffer/inotify
- https://github.com/aauren/dockerfiles/tree/master/incron
