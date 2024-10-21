# http_archive_example

This demo shows a few cool things:

1. How you can download anything in tar.gz format
2. How you can wrap any archive with a bazel build file.
3. How to use the `locations` variable in bazel. See all variables [here](https://bazel.build/reference/be/make-variables#predefined_label_variables)

## How to run the demo

```
bazel run //:use_jrello
```

Then you will see the output at `bazel-bin/output.txt`

## How to query the archive

```
bazel query @jrello//...
```