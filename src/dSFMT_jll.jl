# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule dSFMT_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("dSFMT")
JLLWrappers.@generate_main_file("dSFMT", UUID("05ff407c-b0c1-5878-9df8-858cc2e60c36"))
end  # module dSFMT_jll
