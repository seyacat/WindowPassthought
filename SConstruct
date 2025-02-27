import os
import sys

env = Environment(SHFLAGS=['-fPIC'], CCFLAGS=['-fPIC'], SHLIBSUFFIX='.dylib', SHLIBPREFIX='lib')

# Make sure these paths are included
env.Append(CPPPATH=[
    "godot-cpp/include/",       # Main Godot headers
    "godot-cpp/gen/include/",    # Generated bindings (this should include node.hpp)
    "godot-cpp/gdextension/"     # GDExtension API headers
])

env.Append(LIBPATH=["godot-cpp/bin/"])
env.Append(LIBS=['libgodot-cpp.macos.template_release.universal'])
env.Append(CPPFLAGS=["-std=c++17"])

env.Append(CPPPATH=["godot-cpp/include/",
                    "godot-cpp/gen/include/",
                    "../godot/core/extension"])

if sys.platform == "darwin":
    env.Append(CPPFLAGS=["-ObjC++"])  # Objective-C++ flag
    env.Append(LINKFLAGS=["-framework", "AppKit"])  # Link AppKit for macOS

sources = [
    env.SharedObject("src/mouse_passthrough.mm", CPPPATH=["godot-cpp/include/", "godot-cpp/gen/include/", "godot-cpp/gdextension/"]),
    env.SharedObject("src/register_types.cpp", CPPPATH=["godot-cpp/include/", "godot-cpp/gen/include/", "godot-cpp/gdextension/"])
]

env.SharedLibrary("bin/mouse_passthrough", sources)
