import os
import sys

env = Environment()

# Make sure these paths are included
env.Append(CPPPATH=[
    "godot-cpp/include/",       # Main Godot headers
    "godot-cpp/gen/include/",    # Generated bindings (this should include node.hpp)
    "godot-cpp/gdextension/"     # GDExtension API headers
])

env.Append(LIBPATH=["godot-cpp/bin/"])
env.Append(CPPFLAGS=["-std=c++17"])

env.Append(CPPPATH=["godot-cpp/include/", 
                    "godot-cpp/gen/include/",
                    "../godot/core/extension"])

if sys.platform == "darwin":
    env.Append(CPPFLAGS=["-ObjC++"])  # Objective-C++ flag
    env.Append(LINKFLAGS=["-framework", "AppKit"])  # Link AppKit for macOS

sources = [
    env.Object("src/mouse_passthrough.mm", CPPPATH=["godot-cpp/include/", "godot-cpp/gen/include/", "godot-cpp/gdextension/"], SHARED=True),
    env.Object("src/register_types.cpp", CPPPATH=["godot-cpp/include/", "godot-cpp/gen/include/", "godot-cpp/gdextension/"], SHARED=True)
]

env.StaticLibrary("bin/mouse_passthrough", sources)
