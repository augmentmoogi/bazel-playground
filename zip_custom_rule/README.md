# zip_custom_rule

This example shows:
1. how to use low level API in bazel to create a custom rule. (This example is not working for some reason. [SO Question](https://stackoverflow.com/questions/79110551/bazel-zip-executable-fails-to-create-output))

2. How to use genrule for the same thing. (This example is working)

For the custom rule
```
bazel run //:archive
```


For the genrule
```
bazel run //:archive_macro
```

See the output in `bazel-bin`

```
ll bazel-bin/
```
