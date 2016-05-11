[![](https://imagelayers.io/badge/kevineye/rclone:latest.svg)](https://imagelayers.io/?images=kevineye/rclone:latest 'Get your own badge on imagelayers.io')

From [rclone.org](http://rclone.org):

Rclone is a command line program to sync files and directories to and from

  * Google Drive
  * Amazon S3
  * Openstack Swift / Rackspace cloud files / Memset Memstore
  * Dropbox
  * Google Cloud Storage
  * Amazon Cloud Drive
  * Microsoft One Drive
  * Hubic
  * Backblaze B2
  * Yandex Disk
  * The local filesystem


## Docker

Show help message:

    /usr/bin/docker run --rm \
        kevineye/rclone \
        rclone --help

Interactive configuration:

    touch rclone.conf
    /usr/bin/docker run --rm -it \
        -v "$PWD"/rclone.conf:/root/.rclone.conf \
        kevineye/rclone \
        rclone config

Example Dropbox sync:

    /usr/bin/docker run --rm \
        -v "$PWD"/rclone.conf:/root/.rclone.conf \
        -v /path/to/Dropbox:/data \
        kevineye/rclone \
        rclone sync dropbox:/ /data
