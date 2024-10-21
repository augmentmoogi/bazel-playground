load("@deps//:requirements.bzl", "requirement")
load("@rules_python_pytest//python_pytest:defs.bzl", "py_pytest_test")


py_binary(
    name = "str_utils",
    srcs = ["str_utils.py"],
)

# pytest_test(
#     name = "str_utils_test",
#     srcs = ["str_utils_test.py"],
#     deps = [
#         ":str_utils",
#         requirement("pytest"),
#     ],
# )

py_pytest_test(
    name = "str_utils_test",
    size = "small",
    srcs = ["str_utils_test.py"],
    deps = [
      ":str_utils",
      requirement("pytest"),
    ],
)