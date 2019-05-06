# Scripts

A collection of various shell scripts.

## configure-debian.sh

A script for configuring a clean install of Debian into a fully functional workstation using my personal [dotfiles](https://github.com/TheAwesomeEgg/dotfiles). The script assumes that Debian has been installed with no graphical environment, and the logged in user has `sudo` access.

Download the script using:

```
$ wget --no-check-certificate https://raw.githubusercontent.com/TheAwesomeEgg/scripts/master/configure-debian.sh \
   -O configure-debian.sh
```

and then run it using:

```
$ bash configure-debian.sh
```

## configure-arch.sh

Similar to the `configure-debian.sh` script, except adapted to Arch Linux. Just like the other script, it assumes that Arch has been installed with no graphical environment and the logged in user has `sudo` access.

Download the script using:

```
$ wget --no-check-certificate https://raw.githubusercontent.com/TheAwesomeEgg/scripts/master/configure-arch.sh \
   -O configure-arch.sh
```

and then run it using:

```
$ bash configure-arch.sh
```
