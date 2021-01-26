# Deprecated tap
This tap will no longer be updated.

In order to get new versions of the software in this tap do the following
```bash
$ brew untap k14s/tap
$ brew tap vmware-tanzu/carvel
```

---

# Homebrew Tap

Provides tools from `github.com/k14s` via [Homebrew](http://brew.sh/) package.

To install a package:

```bash
$ brew tap k14s/tap
$ brew install ytt kbld kapp kwt imgpkg vendir
```

Note that we recently moved to `develop` branch, you might have to retap this repo:

```
$ brew untap k14s/tap
$ brew tap k14s/tap
```

For Windows see [https://k14s.io](https://k14s.io) for instructions.

## Development

https://github.com/Homebrew/brew/blob/master/docs/How-to-Create-and-Maintain-a-Tap.md
