import os
import sys

env = Environment()

# Make sure these paths are included
env.Append(CPPPATH=[
    "godot-cpp/include/",       # Main Godot headers
    "godot-cpp/gen/include/"    # Generated bindings (this should include node.hpp)
])

env.Append(LIBPATH=["godot-cpp/bin/"])
env.Append(CPPFLAGS=["-std=c++17"])
env.Append(LIBS=["c++"])

env.Append(CPPPATH=["godot-cpp/include/", 
                    "godot-cpp/gen/include/",
                    "../godot/core/extension"])

if sys.platform == "darwin":
    env.Append(CPPFLAGS=["-ObjC++"])  # Objective-C++ flag
    env.Append(LINKFLAGS=["-framework", "AppKit"])  # Link AppKit for macOS

sources = [
    "src/mouse_passthrough.mm",
    "src/register_types.cpp"
]

env.SharedLibrary("bin/mouse_passthrough", sources)