# UMD LHCb software index page on github.com [![Build status](https://travis-ci.com/umd-lhcb/umd-lhcb.github.io.svg?build)](https://travis-ci.com/umd-lhcb)
The `master` branch is the static webpage that is automatically generated by travis ci.
The `build` branch provides actual Jekyll templates that generates lhcb-umd.github.io.
The theme is based on pages-themes/hackers: [1].

Licensed under CC0, same as the original project.

## Build
To build, first checkout the `build` branch:
```
git fetch
git checkout -b build origin/build
```

Then edit the `index.md` to your liking.
After commit, push your changes to the same branch:
```
git push origin build
```

Wait for a couple of seconds as the travis ci server automatically builds the webpage for you.


[1]: https://github.com/pages-themes/hacker
