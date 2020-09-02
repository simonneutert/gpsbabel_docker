# How to use this image

``` bash
$ docker run --rm --user $UID:$GID -v $PWD:/gpsbabel gpsbabel:latest \
    -r -i gpx -f defect.gpx -x simplify,count=50 -o gpx -F fixed.gpx      
```

* `--user $UID:$GID` is to run as your current user, and not root.
* `-v $PWD:/gpsbabel` is to store downloaded files in the current working directory.


Note: The entrypoint is set to gpsbabel, so do not put gpsbabel again as argument.
