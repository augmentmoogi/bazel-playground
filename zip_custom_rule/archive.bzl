
# This is an implementation of the archive rule using the low level API.
def _archive(ctx):
    out_file = ctx.actions.declare_file(ctx.attr.out)

    args = ctx.actions.args()


    args.add(ctx.attr.out)
    args.add_all(ctx.files.files)



    ctx.actions.run(
        executable = "zip",
        arguments=[args],
        inputs=ctx.files.files,
        outputs=[out_file],
        use_default_shell_env = True,
    )
    return [DefaultInfo(files=depset([out_file]))]

archive = rule(
    implementation = _archive,
    attrs = {
        "files": attr.label_list(allow_files=True),
        "out": attr.string(mandatory=True),
    },
)

# This is a macro that calls the native.genrule rule.
def archive_macro(name, files, out):
    native.genrule(
        name = name,
        srcs = files,
        outs = [out],
        cmd = "zip -j $@ $(SRCS)",
    )