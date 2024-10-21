
genrule(
    name = "use_jrello",
    srcs = ["@jrello//:all_files"],  # Replace with an actual file in the archive
    outs = ["output.txt"],
    cmd = "echo Using jrello $(locations @jrello//:all_files) > $@",
)