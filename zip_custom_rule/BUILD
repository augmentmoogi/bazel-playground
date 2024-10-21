load(":archive.bzl", "archive", "archive_macro")

filegroup(
    name = "text_files",
    srcs = [
        "file1.txt",
        "file2.txt",
    ],
)


archive(
    name = "archive",
    files = [
        ":text_files",
    ],
    out = "all.zip",
)

archive_macro(
    name = "archive_macro",
    files = [
        ":text_files",
    ],
    out = "all_macro.zip",
)