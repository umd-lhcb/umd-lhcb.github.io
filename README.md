# UMD LHCb group website on github.com [![Build status](https://travis-ci.com/umd-lhcb/umd-lhcb.github.io.svg?build)](https://travis-ci.com/umd-lhcb)
This is the source code that generates the
[UMD LHCb group website](http://flavor.physics.umd.edu).

The `master` branch is a static webpage that is automatically generated by
Travis CI.  The `build` branch provides actual `jekyll` templates that
generates `lhcb-umd.github.io`.

Licensed under `CC0-1.0`.

## Change contents without locally install any `ruby` program
As said before, all the actual contents are under `build` branch.  To check it
out:
```
git fetch origin
git checkout -b build origin/build
```

## Editing "Home"
Edit the `index.md` to your likings. Note that this is the only markdown file
that **should** be edited manually.

## Editing "People"
Edit the `current_members` and `past_members` in `_config.yml`

## Editing "Papers"
Edit the `_bibliography/papers.bib`. This is a regular LaTeX bib file. Note
that all curly brackets `{}` should be removed.

## Editing "Software"
Edit the `repos` in `config.yml`.

After committing, push your changes to remote `build` branch:
```
git push origin build
```

Wait for a couple of seconds (~120s) as the Travis CI server automatically
builds the page for you.
