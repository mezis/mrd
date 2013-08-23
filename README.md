# mrd

[![Gem Version](https://badge.fury.io/rb/mrd.png)](http://badge.fury.io/rb/mrd)


> Stands for MySQL RAM Disk. Pronounced like the French swear word.

Spawns a temporary MySQL instance off a RAM disk. Useful to speed up large test suites, your machine usable while running them, and preserve your SSD's life!

Only works under Mac OS X.

## Installation

    $ gem install mrd

## Usage

    $ mrd
    ==>
    Created Ramdisk at /dev/disk4
    Formatted Ramdisk at /dev/disk4
    Mounted Ramdisk at /Volumes/MySQLRAMDisk
    Starting MySQL server
    MySQL is now running.
    Configure you client to use the root user, no password, and the socket at '/Volumes/MySQLRAMDisk/mysql.sock'.
    Just close this terminal or press ^C when you no longer need it.

Then, if using Rails, point your `database.yml` to the temporary SQL server:
  
    test:
      ...
      socket: /Volumes/MySQLRAMDisk/mysql.sock

## Options

    $ mrd -h
    Usage:  [options]
        -v, --verbose                    Run verbosely
        -s, --size SIZE                  Size of RAM disk in MB (default 1024)
        -p, --port PORT                  Run MySQL listening on specified port
        -l, --log                        Create mysql.log

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
