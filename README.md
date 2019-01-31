# UMD flavor physics and CP violation group website [![Build status](https://travis-ci.com/umd-lhcb/umd-lhcb.github.io.svg?build)](https://travis-ci.com/umd-lhcb)
This is the source code that generates the [group website](http://flavor.physics.umd.edu).

The `master` branch is a static webpage that is automatically generated by
Travis CI.  The `build` branch provides actual `jekyll` templates that
generates `lhcb-umd.github.io`.

Licensed under `CC0-1.0`.

If you want to build this website locally, please refer to `README.local.md`.

## Change contents without locally install any `ruby` program
As said before, all the actual contents are under `build` branch.  To check it
out:
```
git fetch origin
git checkout -b build origin/build
```

**Warning**: It is strongly recommended that 4-space, instead of tab, is used as
indentation.

### Editing "Home"
Edit the `index.md` to your likings. Note that this is **the only markdown
file** that should be edited manually.

To change website title, both `index.md` and `title` in `_config.yml` should be
changed.

### Editing "People"
Edit `_data/people.yml`. Note that `name` and `title` fields are mandatory.

### Editing "Papers"
Edit the `_bibliography/papers.bib`. This is a regular LaTeX bib file. Note
that all curly brackets `{}` should be removed and replaced with `""`.

By default it configured to display only 20 most recent results, it can be
changed by editing the following line in `pages/papers.md`:
```
{% bibliography --file papers --max 20 %}
```

### Editing "Talks"
Edit `_data/talks.yml`. Note that `title`, `url`, and `date` are mandatory.
`date` should be in the following format: `YYYY-MM-DD` (ISO standard). Talks
are sorted based on `date`, with latest one ranking first.

If the talk file is not hosted anywhere else, put the talk inside `talks`
folder, and reference the talk with `/talks/<file_name>`. The talk file should
also be checked into this git repo.

### Editing "Software"
Edit `_data/software.yml`. Note that `url` and `descr` are mandatory.

After committing, push your changes to remote `build` branch:
```
git push origin build
```

Wait for a couple of seconds (~120s) as the Travis CI server automatically
builds the page for you.

## Acknowledgement
We used [bedford.io](https://bedford.io) as a layout reference. Also, we
partially reused Jack Wimberley's intro on the original website. Many thanks!
