# Autogenerated wrapper script for dSFMT_jll for aarch64-apple-darwin
export libdSFMT

JLLWrappers.@generate_wrapper_header("dSFMT")
JLLWrappers.@declare_library_product(libdSFMT, "@rpath/libdSFMT.dylib")
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libdSFMT,
        "lib/libdSFMT.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()