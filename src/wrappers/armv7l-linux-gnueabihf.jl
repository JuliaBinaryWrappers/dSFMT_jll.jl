# Autogenerated wrapper script for dSFMT_jll for armv7l-linux-gnueabihf
export libdSFMT

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libdSFMT`
const libdSFMT_splitpath = ["lib", "libdSFMT.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libdSFMT_path = ""

# libdSFMT-specific global declaration
# This will be filled out by __init__()
libdSFMT_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libdSFMT = "libdSFMT.so"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"dSFMT")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    global libdSFMT_path = normpath(joinpath(artifact_dir, libdSFMT_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libdSFMT_handle = dlopen(libdSFMT_path)
    push!(LIBPATH_list, dirname(libdSFMT_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

