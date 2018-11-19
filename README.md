# MkDocs Repositories

This repository is a wrapper around MkDocs wihch generates a nice documentation
viewer based on markdown files. The idea behind this bundle is to add paths to
where to find  markdown files and bundle them in a nice wiki like read-only
page.

One way to document multiple repositories might be to add them as submodules in
this repository and add it as path.

## Setup

In whatever way you like, put markdown files in the `docs` dir. The files can
be in the root or in it's own directory to create a tree like structure.

If you don't want to add all your projects as submodules the included script
`find-markdowns` can be used to copy all markdowns with preserved (relative)
path.

If you are to add your repositories as submodules you must use the `-f` flag
since the directory `docs` is gitignored.

```sh
mkdir docs && cd docs
git submodule add -f https://github.com/githubuser/project.git
```

When all repositories are cloned or when all markdowns are copied you just have
to build the container and run it.

```sh
docker build -t mkdocs-repositories .
docker run -p 8000:8000 -it --rm  --name mkdocs mkdocs-repositories:latest
```

Now all you need to do is to browse to [http://localhost:8000](localhost:8000)
and browse your documentation.
